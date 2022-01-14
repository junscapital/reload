#!/bin/sh
sudo su
ipset create cycle hash:ip
ipset create queue hash:ip
iptables -I INPUT -m set --match-set cycle src -j DROP  
iptables -I OUTPUT -m set --match-set cycle src -j DROP  
iptables -I INPUT -m set --match-set queue src -j DROP  
iptables -I OUTPUT -m set --match-set queue src -j DROP 
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
