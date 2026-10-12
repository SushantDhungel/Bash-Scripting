#!/bin/bash

# check two string arguments were given
[[ $# -lt 2 ]] && \
    echo "Usage: Give two strings as arguments" && exit 1
str1=$1
str2=$2

# check if the strings are NULL
if [ $str1 = NULL ]; then
    echo "String 1 is NULL"
elif [ str2 != NULL ]; then
    echo "String 2 is not NULL"
else
    echo "Both strings are NULL"
fi

# to get the length of the strings
len1=${#str1}
len2=${#str2}
echo length of string1 = $len1, length of string2 = $len2

# comparing the lengths of two string
if [ $len1 -gt $len2 ]; then
    echo "String 1 is longer than string 2"
elif [ $len1 -lt $len2 ]; then
    echo "String 2 is longer than string 1"
else 
    echo "Both strings are of equal length"
fi

# compare the two strings to see if they are the same
if [ $str1 == $str2 ]; then
    echo "Both strings are equal"
else
    echo "Strings are not equal"
fi