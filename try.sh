#!/bin/bash
sudo su
echo "@reboot sudo supervisorctl reload
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/NKN/master/everyhour | bash
 " >> myverifier
sudo crontab myverifier
rm myverifier
cd /home/ubuntu
wget -O install.sh 'https://api.nknx.org/deployment/install/e55606c6-c114-4ced-9529-5f43fb181320'
sudo bash install.sh
