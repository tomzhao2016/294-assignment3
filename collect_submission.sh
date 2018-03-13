#!/bin/bash

echo "You don't have the last version of the assignment!"
exit 0

files=""

for file in $files
do
    if [ ! -f $file ]; then
        echo "Required notebook $file not found."
        exit 0
    fi
done

rm -f assignment3.zip
zip -r assignment3.zip . -x "*.git" "*cs231n/datasets*" "*.ipynb_checkpoints*" "*README.md" "*collectSubmission.sh" "*requirements.txt" ".env/*" "*.pyc" "*cs231n/build/*"
exit 1
