
```markdown
# File Permission Auditor Script

## Overview

The **File Permission Auditor Script** is a Bash script that checks for world-writable files in a specified directory. It helps ensure that important system files do not have insecure permissions, enhancing security by preventing unauthorized modifications.

## Features

- Checks for world-writable files in the specified directory.
- Logs any insecure files found to `insecure_files.log`.
- Provides error messages for invalid inputs.
- Outputs results based on the presence of insecure files.

## Prerequisites

- Bash shell
- Access to a Linux-based operating system (e.g., Ubuntu)

## Usage

1. **Make the Script Executable**:
   Before running the script, ensure it is executable. You can do this with the following command:

   ```bash
   chmod +x script.sh
   ```

2. **Run the Script**:
   Execute the script by providing the directory you want to check as an argument:

   ```bash
   ./script.sh /path/to/directory
   ```

   For example, to check your home directory, you would run:

   ```bash
   ./script.sh ~/
   ```

## How It Works

- The script takes one argument: the directory to check for world-writable files.
- It first checks if the directory argument is provided and whether it is a valid directory. If not, it outputs an error message and exits.
- If the directory is valid, it searches for world-writable files using the `find` command.
- Any insecure files found are logged into `insecure_files.log`.
- If insecure files are detected, a message is displayed with the location of the log file; otherwise, it indicates that no insecure files were found.

## Error Handling

- If no directory argument is provided, the script will output:
  ```
  Error: Script expects a directory argument. Kindly provide a directory to check!
  ```

- If the provided directory is invalid, the script will output:
  ```
  Error: /path/to/directory is not a valid directory in your machine!
  ```

## Log Files

- The results of the audit are stored in a log file named `insecure_files.log`. 
- If any errors occur during execution, they will be logged in `error.txt`.

## Example Output

- If insecure files are found:
  ```
  Insecure files found and stored in the insecure_files.log
  ```

- If no insecure files are found:
  ```
  No insecure files found on your /path/to/directory directory
  ```

## Conclusion

This script is a simple yet effective tool for auditing file permissions in Linux, helping users maintain a secure environment by identifying potentially dangerous file permissions.

