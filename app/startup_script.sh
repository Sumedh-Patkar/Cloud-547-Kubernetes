#!/bin/bash

# echo "\nInstalling required dependencies"
# pip3 install -r requirements.txt

echo "\nStarting the flask application in the background"
python3 app.py &

sleep 5

echo -e "\nIn order for the container not to die after running app"
tail -f /dev/null