#!/bin/bash
yum update -y
yum install -y

cd /var/www/html
Folder=""
wget ${Folder}/index.html
wget ${Folder}/result.html
