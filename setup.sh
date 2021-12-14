#!/bin/bash
echo Installing required packages including python, django, mySQL, and node.js

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential

sudo apt-get install python3
sudo apt install python3-pip
# python-div for mysql

# mysql
sudo pip install pymysql

# django rest framework
pip install django
pip install djangorestframework
# note sure if this is needed
# sudo apt install python3-django

# django authentication

sudo apt-get install nodejs npm
# extra stuff for front end

echo Installation complete...

