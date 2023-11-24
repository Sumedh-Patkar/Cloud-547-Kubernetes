#!/bin/bash

echo "\nStarting the virtual environment"
source venv/bin/activate

echo "\nInstalling required dependencies"
pip3 install -r requirements.txt

echo "\nStarting the flask application in the background"
python3 app.py &