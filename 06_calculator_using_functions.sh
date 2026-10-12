#!/bin/bash

#functions to perform basic arithmetic operations
a() {
    echo "Sum of two numbers is: $(($2 + $3))"
}

s() {
    echo "subtraction of two number is: $(($2 - $3))"
}

m() {
    echo "multiplication of two number is: $(($2 * $3))"
}

d() {
    if [ "$3" -eq 0 ]; then 
        echo "Error: Division by zero is not allowed" 
    else 
        echo "Division of two numbers is: $(($2 / $3))" 
    fi
}

# Main script
# To check if the user has provided the correct number of arguments
if [ $# -lt 3 ]; then
    echo "Usage: provide an opeartion (a,s,m,d) and two numbers"
    exit 1
fi 

#To check if the user has provided a valid argument for the operation
if [ $1 != a ] && [ $1 != s ] && [ $1 != m ] && [ $1 != d ]; then
    echo "Invalid operation. Please provide a valid operation (a,s,m,d)"
    exit 1
fi 

# Function call based on the arguments provided by the user
if [ $1 == "a" ]; then
    $1 $@
elif [ $1 == "s" ]; then
    $1 $@
elif [ $1 == "m" ]; then
    $1 $@
elif [ $1 == "d" ]; then
    $1 $@
fi