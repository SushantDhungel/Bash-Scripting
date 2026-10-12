#!/bin/bash

echo "Enter number 1 or 2"
read num

if [ "$num" -eq 1 ]; then
    export var="YES"
elif [ "$num" -eq 2 ]; then
    export var="NO"
else
    export var="Invalid input"
fi

echo "The value of var is: $var"