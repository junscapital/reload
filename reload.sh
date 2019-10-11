#!/bin/bash
sudo su
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
sudo renice -n -5 -p $(pgrep ^java$)
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo ufw enable
sudo ufw allow 22 && sudo ufw reload
sudo iptables -A INPUT -p udp --destination-port 9446 -j ACCEPT
