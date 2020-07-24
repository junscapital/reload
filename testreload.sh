#!/bin/bash
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
1 0,1,2,3,4,5,6,7,8,9,10,11,12,12,13,14,15,16,17,18,19,20,21,22,23 * * *  sudo ifup ens5
33 0,1,2,3,4,5,6,7,8,9,10,11,12,12,13,14,15,16,17,18,19,20,21,22,23 * * * sudo ifdown ens5
10 0,8,16 * * * sudo rm -rf ~/.cache/thumbnails/* && sudo rm -rf /var/lib/nyzo/production/blocks && sudo supervisorctl reload
55 15 * * * sudo reboot
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
