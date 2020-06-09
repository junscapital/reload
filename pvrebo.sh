#!/bin/sh
sudo su
sudo sed -i "s/200M/300M/g"  /etc/supervisor/conf.d/nyzoVerifier.conf
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
