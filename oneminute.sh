#!/bin/sh
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
sudo ufw allow 9446/udp
sudo iptables -A INPUT -p udp --destination-port 9446 -j ACCEPT
