#!/bin/sh
sudo rm /var/lib/nyzo/production/nodes
sudo wget -P /var/lib/nyzo/production/ https://raw.githubusercontent.com/junscapital/reload/master/nodes
sudo rm /home/blockip.sh
sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
sudo bash /home/blockip.sh
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo git fetch
sudo git checkout 75786060a822443154bcdaaa371fe8696d54a201
sudo ./gradlew build
sudo supervisorctl reload 
