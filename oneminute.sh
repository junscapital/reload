#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
50 7,15,23 * * *  sudo ifup ens5
50 3,11,19 * * * sudo ifdown ens5
41 5 * * 1,4  sudo rm -rf ~/.cache/thumbnails/* && sudo rm -rf /var/lib/nyzo/production/blocks && sudo supervisorctl reload
 " >> myverifier
sudo crontab myverifier
rm myverifier
#sleep 600s
#sudo ifdown ens5
