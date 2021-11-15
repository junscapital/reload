#!/bin/sh
sudo su
ipset create cycle hash:ip
ipset create queue hash:ip
iptables -I INPUT -m set --match-set cycle src -j DROP  
iptables -I OUTPUT -m set --match-set cycle src -j DROP  
iptables -I INPUT -m set --match-set queue src -j DROP  
iptables -I OUTPUT -m set --match-set queue src -j DROP 
curl https://raw.githubusercontent.com/junscapital/reload/master/banip.sh | bash
sudo rm /home/blockip.sh
sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
sudo bash /home/blockip.sh
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
