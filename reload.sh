#!/bin/bash
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/testreload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/testoneminute.sh | bash
5 0,8,16 * * *  sudo ufw allow 9444/tcp && sleep 30s && sudo rm -rf ~/.cache/thumbnails/* && sudo rm -rf /var/lib/nyzo/production/blocks && sudo supervisorctl reload
38 0,8,16 * * * sudo ufw deny 9444/tcp
55 15 * * * sudo reboot
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo ufw deny 9444/tcp
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
#sleep 120s
#sudo ifdown ens5
