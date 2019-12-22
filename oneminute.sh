#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,13 * * * sudo ufw allow 9444/tcp
22 1,13 * * * sudo ufw allow 9444/tcp
2 7,19 * * * sudo ufw allow 9444/tcp
5 7,19 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
