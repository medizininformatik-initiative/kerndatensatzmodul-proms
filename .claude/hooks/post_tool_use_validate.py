#!/usr/bin/env python3
"""
PostToolUse hook: run SUSHI + Java validator after FSH file edits.
Exit 2 feeds errors back to Claude. Exit 0 is silent pass.
"""
import json, os, subprocess, sys, time
from pathlib import Path

PROJECT_ROOT = Path(__file__).parent.parent.parent
STATE_FILE = PROJECT_ROOT / ".claude" / "hooks" / ".last-sushi-run"
CONFIG_PATH = PROJECT_ROOT / ".claude" / "scripts" / "validation_loop_config.json"

def load_config():
    if CONFIG_PATH.exists():
        with open(CONFIG_PATH) as f:
            return json.load(f)
    return {}

def get_changed_resources():
    """Get resources changed by SUSHI via git diff."""
    result = subprocess.run(
        ["git", "diff", "--name-only", "fsh-generated/resources/"],
        capture_output=True, text=True, cwd=str(PROJECT_ROOT),
    )
    changed = [f for f in result.stdout.splitlines() if f.strip().endswith(".json")]
    # Also new untracked files
    result2 = subprocess.run(
        ["git", "ls-files", "--others", "--exclude-standard", "fsh-generated/resources/"],
        capture_output=True, text=True, cwd=str(PROJECT_ROOT),
    )
    untracked = [f for f in result2.stdout.splitlines() if f.strip().endswith(".json")]
    return list(set(changed + untracked))

def run_java_validator(config, resources):
    """Run Java FHIR validator on changed resources."""
    jv = config.get("java_validator", {})
    jar = os.path.expanduser(jv.get("jar_path", "~/.fhir/validators/validator_cli.jar"))
    java = jv.get("java_command", "/opt/homebrew/opt/openjdk@17/bin/java")
    tx = jv.get("tx_server", "http://localhost:3000")
    version = jv.get("version", "4.0.1")
    extra = jv.get("extra_args", [])
    timeout = jv.get("timeout_seconds", 300)

    if not os.path.exists(jar):
        return True, "Validator jar not found, skipping"

    # Check tx server
    try:
        subprocess.run(["curl", "-s", "--connect-timeout", "2", tx], capture_output=True, timeout=5)
        tx_args = ["-tx", tx]
    except Exception:
        tx_args = ["-tx", "n/a"]

    result = subprocess.run(
        [java, "-jar", jar, "-version", version, *tx_args, *extra, *resources],
        capture_output=True, text=True, timeout=timeout, cwd=str(PROJECT_ROOT),
    )
    return result.returncode == 0, result.stdout + result.stderr

def filter_errors(output, config):
    """Extract error lines, filtering known noise."""
    filters = config.get("error_filters", [])
    errors = []
    for line in output.splitlines():
        if "Error @ " not in line and "error @ " not in line:
            continue
        if any(f in line for f in filters):
            continue
        errors.append(line.strip())
    return errors

def main():
    data = json.loads(sys.stdin.read())
    if data.get("tool_name") not in ("Edit", "Write"):
        sys.exit(0)

    fp = data.get("tool_input", {}).get("file_path", "")
    if "input/fsh/" not in fp or not fp.endswith(".fsh"):
        sys.exit(0)

    # Debounce
    if STATE_FILE.exists() and time.time() - STATE_FILE.stat().st_mtime < 3:
        sys.exit(0)
    STATE_FILE.touch()

    config = load_config()

    # Phase 1: SUSHI
    result = subprocess.run(
        ["sushi", ".", "--snapshot"],
        capture_output=True, text=True, timeout=120, cwd=str(PROJECT_ROOT),
    )
    if result.returncode != 0:
        errors = [l for l in (result.stdout + result.stderr).splitlines() if "error" in l.lower()]
        print("SUSHI compilation failed:\n" + "\n".join(errors[-20:]), file=sys.stderr)
        sys.exit(2)

    # Phase 2: Java validator on changed resources
    jv = config.get("java_validator", {})
    if jv.get("enabled") and jv.get("auto_run"):
        resources = get_changed_resources()
        if resources:
            success, output = run_java_validator(config, resources)
            if not success:
                errors = filter_errors(output, config)
                if errors:
                    msg = f"FHIR validation failed ({len(errors)} errors):\n" + "\n".join(errors[-15:])
                    print(msg, file=sys.stderr)
                    sys.exit(2)

    # All passed — auto-commit
    subprocess.run(["git", "add", "fsh-generated/"], cwd=str(PROJECT_ROOT))
    subprocess.run(["git", "add", "input/fsh/"], cwd=str(PROJECT_ROOT))

if __name__ == "__main__":
    main()
