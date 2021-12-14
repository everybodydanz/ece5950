#!/bin/bash
echo Installing required packages including python, django, mySQL, and node.js

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential

sudo apt-get install python3
# python-div for mysql

# mysql
sudo pip install pymysql

# django rest framework
pip install djangorestframework
# django authentication

sudo apt-get install nodejs npm
# extra stuff for front end

echo Installation complete...

