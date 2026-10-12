#!/bin/bash

echo "This is a demo script to show how to use command line arguments."

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 argument"
    exit 1
fi

echo "$1"