# Commit, Push, Track CI Validation, and Evaluate Results

Perform the complete workflow of committing, pushing, waiting for CI validation, and analyzing results.

## Instructions

1. **Commit current changes**:
   - Run `git status` and `git diff` to see what will be committed
   - Create a commit with an appropriate message following the repository conventions
   - Include the standard footer with Claude attribution

2. **Push to remote**:
   - Push the commit to the remote repository
   - Note the commit SHA for tracking

3. **Monitor CI validation**:
   - Wait for the GitHub Actions workflow "CI (FHIR Validation)" to complete
   - Poll every 30 seconds for up to 10 minutes
   - Use `gh api repos/medizininformatik-initiative/kerndatensatzmodul-proms/actions/runs` to check status

4. **Download validation artifacts**:
   - Once complete, download the `validation-output` artifact
   - Extract validation.json and validation.html
   - Save to `.validation-history/{timestamp}_{commit}/`

5. **Generate comprehensive error report** with:
   - **Total error count** (current vs previous)
   - **Error categories** grouped by:
     - Error code/type (e.g., UNABLE_TO_INFER_CODESYSTEM, Terminology_TX_NoValid_16)
     - Resource type (Questionnaire, Bundle, StructureDefinition)
   - **Affected files** list
   - **Fixed errors** (errors present in previous run but not in current)
   - **New errors** (errors present in current run but not in previous)

6. **Output format**:
   ```
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   FHIR Validation Report for commit {short_sha}
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

   SUMMARY
   -------
   Current errors: X
   Previous errors: Y
   Change: +/-Z

   ERROR CATEGORIES
   ----------------
   - UNABLE_TO_INFER_CODESYSTEM: N errors
   - Terminology_TX_NoValid_16: N errors
   - [other categories]: N errors

   AFFECTED RESOURCES
   ------------------
   - Questionnaire: N errors
   - Bundle: N errors
   - StructureDefinition: N errors

   FIXED ERRORS (showing up to 20)
   -------------------------------
   [list of fixed error locations and messages]

   NEW ERRORS (showing up to 20)
   -----------------------------
   [list of new error locations and messages]

   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   Results saved to: .validation-history/{path}
   View HTML report: .validation-history/{path}/validation.html
   ```

## Python Script for Error Analysis

Use this Python script to parse validation.json and generate the report:

```python
import json
import os
from collections import defaultdict

def analyze_validation(current_path, previous_path=None):
    def extract_errors(filepath):
        with open(filepath) as f:
            data = json.load(f)

        errors = []
        for entry in data.get('entry', []):
            resource = entry.get('resource', {})
            if resource.get('resourceType') == 'OperationOutcome':
                for issue in resource.get('issue', []):
                    if issue.get('severity') == 'error':
                        location = issue.get('location', [''])[0] if issue.get('location') else ''
                        message = issue.get('diagnostics', '')
                        code = issue.get('code', 'unknown')

                        # Extract resource type from location
                        resource_type = location.split('.')[0] if location else 'unknown'
                        if '/*' in location:
                            resource_type = location.split('.')[0].split('/')[0]

                        # Extract error category from message
                        category = 'Other'
                        if 'UNABLE_TO_INFER_CODESYSTEM' in message:
                            category = 'UNABLE_TO_INFER_CODESYSTEM'
                        elif 'Terminology_TX_NoValid_16' in message or 'TX_NoValid' in message:
                            category = 'Terminology_TX_NoValid'
                        elif 'not found' in message.lower():
                            category = 'Reference_Not_Found'
                        elif 'invalid' in message.lower():
                            category = 'Invalid_Value'

                        errors.append({
                            'location': location,
                            'message': message,
                            'code': code,
                            'resource_type': resource_type,
                            'category': category,
                            'signature': f'{location}||{message}'
                        })
        return errors

    current_errors = extract_errors(current_path)

    # Categorize
    by_category = defaultdict(list)
    by_resource = defaultdict(list)
    for err in current_errors:
        by_category[err['category']].append(err)
        by_resource[err['resource_type']].append(err)

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
        'by_resource': dict(by_resource),
        'fixed': fixed,
        'new': new
    }
```

## Notes

- The existing post-push hook at `.git/hooks/post-push` runs automatically but only shows basic diff
- This command provides a more detailed analysis with categorization
- Results are saved to `.validation-history/` for historical tracking
- Use `gh auth status` to ensure GitHub CLI is authenticated
