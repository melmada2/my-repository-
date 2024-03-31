#!/bin/bash -x 
yum update -y

#instal python and flask
yum install python3 -y
yum install pip -y
pip3 install flask 

#install application files
cd /home/ec2-user
mkdir templates
FOLDER="https://raw.githubusercontent.com/melmada2/my-repository-/main/001-roman-numerals-converter"
wget ${FOLDER}/app.py
wget  -P templates ${FOLDER}/templates/index.html
wget  -P templates ${FOLDER}/templates/result.html

#run application 
python3 app.py