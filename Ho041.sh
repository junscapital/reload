#!/bin/sh
sudo rm /home/blockip.sh
sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
sudo bash /home/blockip.sh
cd /home/ubuntu/nyzoVerifier
sudo ./gradlew build
sudo supervisorctl reload 
