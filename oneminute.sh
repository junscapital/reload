#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,13 * * * sudo ufw allow 9444/tcp && sudo ufw reload
12 1,13 * * * sudo ufw deny 9444/tcp && sudo ufw reload
 " >> myverifier
sudo crontab myverifier
rm myverifier

