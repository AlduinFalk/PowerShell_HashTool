# ReadMe: PowerShell File Hash Checker

## Overview
This PowerShell script allows you to calculate and verify the hash value of a file. It supports various hash algorithms such as MD5, SHA1, SHA256, SHA384, and SHA512. The script is compatible with Windows 10 and Windows 11.

## Preparation
Before running the script, you need to ensure that PowerShell scripts are allowed to execute on your system. By default, this is often disabled on Windows.

### Enabling PowerShell Script Execution
1. Open PowerShell with administrator privileges.
2. Enter the following command to change the execution policy:
   ```powershell
   Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
   ```
3. Confirm the prompt by selecting `Yes`.

You can reset the policy to "Restricted" anytime using the following command:
```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Restricted
```

## Installation
Save the script to any location on your system, such as the `Documents` folder or the desktop.

## Running the Script
1. Navigate to the location where the script is saved.
2. Right-click on the script file and select "Run with PowerShell."

## Usage
1. After starting the script, you will be prompted to enter the hash algorithm you want to calculate (e.g., MD5, SHA256).
2. Select the file to be checked using a file selection dialog.
3. The script calculates the file's hash value and displays the result.

## Supported Hash Algorithms
- MD5
- SHA1
- SHA256
- SHA384
- SHA512

## Troubleshooting
- **No file selected:** If no file is selected in the file selection dialog, the script will exit.
- **Invalid hash algorithm:** Enter one of the supported hash algorithms listed above.

## Security Note
Ensure that you only run scripts from trusted sources.

