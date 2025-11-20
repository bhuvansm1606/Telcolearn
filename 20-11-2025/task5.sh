#!/bin/bash

DURATION=120
INTERVAL=5

SECONDS_PASSED=0

echo "Fetching top 3 CPU-consuming processes..." | tee -a log.txt

while [ $SECONDS_PASSED -lt $DURATION ]; do
    
    echo "Time: $(date '+%H:%M:%S')" | tee -a log.txt
    
    ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 4 | tee -a log.txt
    
    echo " " | tee -a log.txt

    sleep $INTERVAL
    SECONDS_PASSED=$((SECONDS_PASSED + INTERVAL))

done

