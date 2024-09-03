#!/bin/bash

COUNT_FILE="/home/term/dump/counter.txt"

if [ ! -f "$COUNT_FILE" ]; then
    echo 0 > "$COUNT_FILE"
fi

COUNT=$(cat "$COUNT_FILE")

LOG_DIR="LOGS_reboot/Teste_$COUNT"

if [ "$COUNT" -le "$MAX_EXEC"]
    cd "home/term/base" 
    robot --outputdir "$LOG_DIR" example.robot       ## here you change to whatever script you need
    
    COUNT=$((COUNT + 1))
    echo "$COUNT" > "$COUNT_FILE"
    sudo reboot   

else
    echo "SYSTEM REBOOT TEST DONE"
fi
