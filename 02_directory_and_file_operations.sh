#!/bin/bash

# Enter file name
echo "Give me the name of the file "
read file_name

# Check if file exists
if [ -e "$file_name" ]; then
    echo "The file name already exists"
    exit 1
fi

# Create directory
mkdir -p $file_name

# Enter directory
cd $file_name

# Show current path
pwd

# Create 3 text files
for n in {1..3}
do 
    touch text$n.txt
done 

# List all files
ls -lta

# Write text into files
for names in text*
do 
    echo "This is file $names" > $names
done 

# Display file contents
cat text*

# Go back to parent directory
cd ..

# Delete directory and its contents
rm -r $file_name

echo "Goodbye! The directory $file_name and its contents have been deleted."