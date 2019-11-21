#!/bin/bash

sudo su
echo "@reboot sudo supervisorctl reload
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/NKN/master/everyhour.sh | bash
2 3,9,15,21 * * * sudo ufw allow 9444/tcp
12 3,9,15,2 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo bash -c 'echo block_file_consolidator=delete > /var/lib/nyzo/production/preferences'
cd /home/ubuntu
wget -O install.sh 'https://api.nknx.org/deployment/install/e55606c6-c114-4ced-9529-5f43fb181320'
sudo bash install.sh
sudo ufw allow 22 && sudo ufw reload
sudo iptables -A INPUT -p udp --destination-port 9446 -j ACCEPT
