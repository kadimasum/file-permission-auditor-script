#! /usr/bin/bash

echo "File Permission Auditor Script"

DIRECTORY_TO_CHECK=$1
LOG_FILE="./insecure_files.log"

if [ -z "$DIRECTORY_TO_CHECK" ]
then
    echo "Error: Script expects a directory argument. Kindly provide a directory to check!"
    exit 1
elif [ ! -d "$DIRECTORY_TO_CHECK" ]
then
    echo "Error: $DIRECTORY_TO_CHECK is not a valid directory in your machine!"
    exit 1
else
    echo "Checking for world writable files in $DIRECTORY_TO_CHECK..."
fi

find "$DIRECTORY_TO_CHECK" -type f -perm /o+w -exec ls -l {} \; >> "$LOG_FILE" 2> error.txt

if [ -s "$LOG_FILE" ]
then
    echo "Insecure files found and stored in the $LOG_FILE"
    exit 1
else
    echo "No insecure files found on your $DIRECTORY_TO_CHECK directory"
fi