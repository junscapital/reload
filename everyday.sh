#!/bin/sh
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sleep 3s
sudo supervisorctl reload
sudo renice -n -5 -p $(pgrep ^java$)
