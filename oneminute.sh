#!/bin/sh
sudo su
sudo swapoff -a -v
sudo rm /swapfile
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
sudo sed -i '1i\always_track_blockchain=1' /var/lib/nyzo/production/preferences
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,5,9,13,17,21 * * * sudo ufw allow 9444/tcp
6 1,5,9,13,17,21 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
