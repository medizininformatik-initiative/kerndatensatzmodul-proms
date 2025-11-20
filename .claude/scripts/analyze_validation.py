#!/usr/bin/env python3
"""
Analyze FHIR validation results from validation.json
Usage: python3 analyze_validation.py <validation.json> [previous_validation.json]
"""
import json
import sys
import os
from collections import defaultdict

def extract_errors(filepath):
    """Extract all errors from validation.json Bundle."""
    with open(filepath) as f:
        data = json.load(f)

    errors = []

    # Track which file each OperationOutcome relates to
    # The Bundle alternates: resource file entry, then its OperationOutcome
    current_filename = 'unknown'

    for i, entry in enumerate(data.get('entry', [])):
        resource = entry.get('resource', {})
        full_url = entry.get('fullUrl', '')

        # If this is a regular resource, capture its filename for the next OperationOutcome
        if resource.get('resourceType') != 'OperationOutcome':
            if full_url:
                current_filename = full_url.split('/')[-1]
            continue

        # Process OperationOutcome
        for issue in resource.get('issue', []):
            if issue.get('severity') != 'error':
                continue

            location = issue.get('location', [''])[0] if issue.get('location') else ''
            message = issue.get('diagnostics', issue.get('details', {}).get('text', ''))
            code = issue.get('code', 'unknown')

            # Categorize by message content
            category = 'Other'
            if 'Wrong Display Name' in message:
                category = 'Wrong_Display_Name'
            elif 'Unknown code' in message or 'not found in the code system' in message:
                category = 'Unknown_Code'
            elif 'UNABLE_TO_INFER_CODESYSTEM' in message:
                category = 'UNABLE_TO_INFER_CODESYSTEM'
            elif 'TX_NoValid' in message or 'not in the value set' in message:
                category = 'Terminology_TX_NoValid'
            elif 'not found' in message.lower() or 'cannot find' in message.lower():
                category = 'Reference_Not_Found'
            elif 'invalid' in message.lower():
                category = 'Invalid_Value'

            errors.append({
                'filename': current_filename,
                'location': location,
                'message': message,
                'code': code,
                'category': category,
                'signature': f'{current_filename}|{location}|{message}'
            })

    return errors

def analyze_validation(current_path, previous_path=None):
    """Analyze validation results and optionally compare with previous run."""
    current_errors = extract_errors(current_path)

    # Group by category and filename
    by_category = defaultdict(list)
    by_file = defaultdict(list)
    for err in current_errors:
        by_category[err['category']].append(err)
        by_file[err['filename']].append(err)

    # Compare with previous if available
    fixed = []
    new = []
    prev_count = 0

    if previous_path and os.path.exists(previous_path):
        prev_errors = extract_errors(previous_path)
        prev_count = len(prev_errors)

        current_sigs = {e['signature'] for e in current_errors}
        prev_sigs = {e['signature'] for e in prev_errors}

        fixed = [e for e in prev_errors if e['signature'] not in current_sigs]
        new = [e for e in current_errors if e['signature'] not in prev_sigs]

    return {
        'total': len(current_errors),
        'previous': prev_count,
        'by_category': dict(by_category),
        'by_file': dict(by_file),
        'fixed': fixed,
        'new': new,
        'all_errors': current_errors
    }

def print_report(results, short_sha, outdir):
    """Print formatted validation report."""
    print("━" * 60)
    print(f"FHIR Validation Report for commit {short_sha}")
    print("━" * 60)
    print()
    print("SUMMARY")
    print("-" * 40)
    print(f"Total errors: {results['total']}")
    if results['previous'] > 0:
        change = results['total'] - results['previous']
        sign = '+' if change > 0 else ''
        print(f"Previous errors: {results['previous']}")
        print(f"Change: {sign}{change}")
    print()

    print("ERROR CATEGORIES")
    print("-" * 40)
    for cat, errs in sorted(results['by_category'].items(), key=lambda x: -len(x[1])):
        print(f"- {cat}: {len(errs)} errors")
    print()

    print("AFFECTED FILES (top 15)")
    print("-" * 40)
    for fname, errs in sorted(results['by_file'].items(), key=lambda x: -len(x[1]))[:15]:
        print(f"- {fname}: {len(errs)} errors")
    print()

    if results['fixed']:
        print(f"FIXED ERRORS ({len(results['fixed'])} total, showing up to 10)")
        print("-" * 40)
        for err in results['fixed'][:10]:
            print(f"  [{err['category']}] {err['filename']}")
            print(f"    {err['message'][:100]}")
        print()

    if results['new']:
        print(f"NEW ERRORS ({len(results['new'])} total, showing up to 10)")
        print("-" * 40)
        for err in results['new'][:10]:
            print(f"  [{err['category']}] {err['filename']}")
            print(f"    {err['message'][:100]}")
        print()

    print("━" * 60)
    print(f"Results saved to: {outdir}")
    print(f"View HTML report: {outdir}/validation.html")

def find_previous_validation(current_path):
    """Automatically find the previous validation.json for comparison."""
    history_dir = os.path.dirname(os.path.dirname(current_path))
    if not os.path.basename(history_dir) == '.validation-history':
        return None

    current_dir = os.path.basename(os.path.dirname(current_path))

    # Get all validation directories sorted by name (timestamp)
    dirs = sorted([d for d in os.listdir(history_dir)
                   if os.path.isdir(os.path.join(history_dir, d)) and d != current_dir],
                  reverse=True)

    if not dirs:
        return None

    # Return the most recent one before current
    prev_path = os.path.join(history_dir, dirs[0], 'validation.json')
    return prev_path if os.path.exists(prev_path) else None

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python3 analyze_validation.py <validation.json> [previous.json]")
        print("       If previous.json is omitted, automatically finds the previous validation.")
        sys.exit(1)

    current = sys.argv[1]

    # Auto-find previous if not provided
    if len(sys.argv) > 2:
        previous = sys.argv[2]
    else:
        previous = find_previous_validation(current)
        if previous:
            print(f"Auto-detected previous: {os.path.basename(os.path.dirname(previous))}")

    results = analyze_validation(current, previous)

    # Extract info from path
    outdir = os.path.dirname(current)
    short_sha = outdir.split('_')[-1] if '_' in outdir else 'unknown'

    print_report(results, short_sha, outdir)
