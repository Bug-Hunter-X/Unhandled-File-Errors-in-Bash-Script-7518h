#!/bin/bash

# This script attempts to process a file, but it doesn't handle errors properly.

input_file="my_file.txt"

# Incorrect way to check if the file exists
if [ -f $input_file ]; then
  # Process the file
  cat $input_file | while read line; do
    # ... some processing ...
  done
else
  echo "Error: File not found"
fi

# ... rest of the script ...