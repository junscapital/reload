#!/bin/sh
sudo su
sudo rm -rf /home/ubuntu/nyzoVerifier 
sudo rm -rf /root/nyzoVerifier
cd /home/ubuntu/
git clone https://github.com/Open-Nyzo/nyzoVerifier.git
cd /home/ubuntu/nyzoVerifier
sudo ./gradlew build
sudo supervisorctl reload 
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
