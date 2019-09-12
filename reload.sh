#!/bin/bash
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo git fetch
sudo git checkout 9e66c00c98ce75b0df4b565ecbd163e65caef57a
sudo ./gradlew build
sudo supervisorctl reload
sudo renice -n -5 -p $(pgrep ^java$)
