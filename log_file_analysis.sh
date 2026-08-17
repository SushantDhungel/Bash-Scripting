#!/bin/bash

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

LOG_PATH="." # Set the path to search for log files / default: current directory

echo -e "\nSearching for log files modified in the last 24 hours"

LOG_FILES=$(find $LOG_PATH -name "*.log" -mtime -1)

echo -e "\n$LOG_FILES"


for LOG_FILE in $LOG_FILES; do

    echo -e "\n=============================================="
    echo "=============================================="
    echo "================ $LOG_FILE ================"
    echo "=============================================="
    echo "=============================================="


    for PATTERN in ${ERROR_PATTERNS[@]};do
        echo -e "\n===== Number of $PATTERN error in log file $LOG_FILE ====="
        grep -c $PATTERN $LOG_FILE
    done
    
    for PATTERN in ${ERROR_PATTERNS[@]};do
        echo -e "\n========== $PATTERN error found in log file $LOG_FILE ==========\n"
        grep $PATTERN $LOG_FILE
    done
done