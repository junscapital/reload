#!/bin/bash
#sudo su
#echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'pB3SbjkH' ssh root@139.99.90.249 'cat - >> /root/testv'
#cd /home/ubuntu/nyzoVerifier
#sudo git reset --hard
#sudo git pull origin master
#sudo ./gradlew build
sudo iptables -A OUTPUT -p tcp -d 104.161.79.22 --dport 9444 -j DROP
sudo supervisorctl reload
