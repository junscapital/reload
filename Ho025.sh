#!/bin/sh
sudo su
sudo rm -rf /var/lib/nyzo/production/blocks/
sudo rm -rf /var/lib/nyzo/production/blocks/
sudo rm /home/blockip.sh
sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/inreload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/Ho025.sh | bash
*/1 * * * * sudo bash /home/blockip.sh
1 7,19 * * * sudo rm -rf /var/lib/nyzo/production/blocks
50 2 * * 1,4 sudo rm /home/blockip.sh; sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
 " >> myverifier
sudo crontab myverifier
rm myverifier
