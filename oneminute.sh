#!/bin/sh
sudo su
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
sudo rm -rf /var/lib/nyzo/production/blocks
sudo rm -rf /var/lib/nyzo/production/blocks
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,9,17 * * * sudo ufw allow 9444/tcp && sudo supervisorctl reload
32 1,9,17 * * * sudo ufw deny 9444/tcp
2 7 * * * sudo ufw allow 9444/tcp
4 7 * * * sudo ufw deny 9444/tcp
3 16 1,16 * * sudo rm -rf ~/.cache/thumbnails/* && sudo rm -rf /var/lib/nyzo/production/blocks
55 15 * * * sudo reboot
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo ufw allow 9444/tcp
sudo ufw allow 9446/udp
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
