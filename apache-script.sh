#!/bin/bash
echo "Update server"
apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Download and copy files"
cd /tmp
wget https://github.com/FernandoHugo399/404-Page-With-Animation/archive/refs/heads/master.zip
unzip master.zip
cd 404-Page-With-Animation-master
cp -R * /var/www/html/

