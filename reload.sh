#!/bin/bash
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
21 3,11,19 * * *  sudo ifup ens5
21 7,15,23 * * * sudo ifdown ens5
41 11 * * 4  sudo rm -rf ~/.cache/thumbnails/* && sudo rm -rf /var/lib/nyzo/production/blocks && sudo supervisorctl reload
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo supervisorctl reload
