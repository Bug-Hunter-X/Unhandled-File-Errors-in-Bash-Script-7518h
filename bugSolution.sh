#!/bin/bash

input_file="my_file.txt"

# Correct way to check file existence and handle errors
if [ -f "$input_file" ]; then
  # Process the file
  while IFS= read -r line; do
    # ... some processing ...
    echo "Processing line: $line"
  done < "$input_file"
else
  echo "Error: File '$input_file' not found or inaccessible." >&2
  exit 1 # Indicate an error
fi

# ... rest of the script ...
# Note the use of "$input_file" within double quotes, for safer handling of filenames with spaces