#!/bin/bash
sudo su
#echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'pB3SbjkH' ssh root@139.99.90.249 'cat - >> /root/testv'
#cd /home/ubuntu/nyzoVerifier
#sudo git reset --hard
#sudo git pull origin master
#sudo ./gradlew build
sudo supervisorctl reload
