#!/bin/sh
sudo su
sudo rm /var/lib/nyzo/production/nodes
sudo wget -P /var/lib/nyzo/production/ https://raw.githubusercontent.com/junscapital/reload/master/nodes
sudo rm /home/blockip.sh
sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
sudo bash /home/blockip.sh
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo git fetch
sudo git checkout ca8cee6cf06ecc34224ab1af52d49232e2910a9d
sudo ./gradlew build
sudo supervisorctl reload 
more /var/lib/nyzo/production/nodes | grep '3.211.175.183'
