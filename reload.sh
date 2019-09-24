#!/bin/bash
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1 1,13 * * * sudo ufw allow 9444/tcp
11 1,13 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo ufw enable
sudo ufw allow 22
sudo iptables -A INPUT -p udp --destination-port 9446 -j ACCEPT
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo git fetch
sudo git checkout 9e66c00c98ce75b0df4b565ecbd163e65caef57a
sudo ./gradlew build
sudo supervisorctl reload
sudo renice -n -5 -p $(pgrep ^java$)
