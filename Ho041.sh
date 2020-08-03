#!/bin/sh
rm -rf /home/ubuntu/nyzoVerifier 
cd /home/ubuntu/
sudo git clone https://github.com/n-y-z-o/nyzoVerifier.git
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo git fetch
sudo git checkout 75786060a822443154bcdaaa371fe8696d54a201
sudo ./gradlew build
sudo supervisorctl reload 
