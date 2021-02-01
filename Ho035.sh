#!/bin/sh
sudo su
sudo rm /var/lib/nyzo/production/nodes
sudo wget -P /var/lib/nyzo/production/ https://raw.githubusercontent.com/junscapital/reload/master/nodes
cd /home/ubuntu/nyzoVerifier
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
