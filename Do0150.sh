#!/bin/sh
sudo rm /var/lib/nyzo/production/nodes
sudo wget -P /var/lib/nyzo/production/ https://raw.githubusercontent.com/junscapital/reload/master/nodes
sudo rm /home/blockip.sh
sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
sudo bash /home/blockip.sh
cd /home/ubuntu/nyzoVerifier 
sudo git fetch origin pull/25/head:NCFP10
sudo git checkout NCFP10
sudo ./gradlew build
sudo supervisorctl reload 
