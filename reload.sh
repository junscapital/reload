#!/bin/bash
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo git fetch
sudo git checkout 7ffad873d99120105eda5c93cbd3140058913d27
sudo ./gradlew build
sudo supervisorctl reload
sudo renice -n -5 -p $(pgrep ^java$)
