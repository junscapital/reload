#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/inreload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/Vo0205.sh | bash
1 1,13 * * * sudo rm -rf /var/lib/nyzo/production/blocks
*/1 * * * * sudo bash /root/blockip.sh
 " >> myverifier
sudo crontab myverifier
rm myverifier
