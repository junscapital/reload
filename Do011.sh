#!/bin/sh
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo git fetch
sudo git checkout da9f8ae84af806a9f69758e1244829dd2ec62c9c
sudo ./gradlew build
sudo supervisorctl reload
sudo renice -n -5 -p $(pgrep ^java$)
