#!/bin/bash

# This script takes a word as a command-line argument and outputs it with a random number.

[[ $# -eq 0 ]] && echo "Usage: $0 word" && exit 1

echo "$1+$RANDOM"