#!/bin/bash

# Initialize counter
counter=1

# Loop through each file in the directory
for file in *; do
    # Skip the script file itself
    if [[ "$file" == "rename.sh" ]]; then
        continue
    fi

    # Extract the file extension
    extension="${file##*.}"

    # Construct the new file name with the counter
    new_file="bg_$counter.$extension"

    # Rename the file
    mv "$file" "$new_file"

    # Increment the counter
    ((counter++))
done

echo "Renaming complete."
