#!/bin/bash

# Check for a non-existent file
# set -x # enable debug mode


echo "Checking for a non-existent file..."
ls demo.txt
echo "Exit status: $?"

echo ""
# Create the file

echo "Creating a file..."
touch demo.txt

echo "Checking for an existing file..."
ls demo.txt
echo "Exit status: $?"

# Remove the created file
rm demo.txt