#!/bin/sh
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo git fetch
sudo git checkout 75786060a822443154bcdaaa371fe8696d54a201
sudo ./gradlew build
sudo supervisorctl reload 
