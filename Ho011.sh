#!/bin/sh
sudo rm -rf /var/lib/nyzo/production/blocks
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
sudo supervisorctl status
