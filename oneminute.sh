#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
50 2,10,18 * * *  sudo ifup ens5 && sleep 30s && sudo rm -rf ~/.cache/thumbnails/* && sudo rm -rf /var/lib/nyzo/production/blocks && sudo supervisorctl reload
23 3,11,19 * * * sudo ifdown ens5
55 15 * * * sudo reboot
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo ifdown ens5
