#!/bin/sh
sudo su
sudo swapoff -a -v
sudo rm /swapfile
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
cd /var/lib/nyzo/production/blocks
sudo rm -rf 002 003 004 005 
sudo rm -rf /var/lib/nyzo/production/blocks/individual
sudo mkdir /var/lib/nyzo/production/blocks/individual/
sudo bash -c 'echo  > /var/lib/nyzo/production/preferences'
sudo ufw allow 9444/tcp
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,7,13,19 * * * sudo ufw allow 9444/tcp
12 1,7,13,19 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo git fetch
sudo git checkout b0a7a87581d1c02447c15260cca10e7c81496aea
sudo ./gradlew build
sudo supervisorctl reload
