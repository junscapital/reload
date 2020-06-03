#!/bin/sh
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload

