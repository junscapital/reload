#!/bin/bash
#sudo su
#echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'OwRXBiZ0' ssh root@51.75.249.70 'cat - >> /root/managed_verifiers'
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
