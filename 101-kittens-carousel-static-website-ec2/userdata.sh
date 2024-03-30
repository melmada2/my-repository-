#!/bin/bash

#Update the OS
yum update -y
#Install Apache
yum install httpd -y

#Copy content to /var/www/html folder 
cd /var/www/html
Folder="https://raw.githubusercontent.com/melmada2/my-repository-/main/101-kittens-carousel-static-website-ec2/static-web"
wget ${Folder}/index.html
wget ${Folder}/cat0.jpg
wget ${Folder}/cat1.jpg
wget ${Folder}/cat2.jpg

#Start and Enable Apache servie
systemctl start httpd 
systemctl enable httpd
