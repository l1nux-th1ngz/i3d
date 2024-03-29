#!/bin/bash

# Change permissions of .sh files to 755
for file in *.sh; do
    echo "Changing permissions for file: $file"
    chmod 755 "$file"
done

# Move all .sh files to the home directory
mv *.sh ~/ 
done

# Sort files numerically then alphabetically
ls -l *.sh | sort -n | sort -k 9
