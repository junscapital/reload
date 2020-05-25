#!/bin/sh
#sudo ufw deny 9444/tcp
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,12 * * * sudo ufw allow 9444/tcp && sudo supervisorctl reload
32 1,12 * * * sudo ufw deny 9444/tcp
3 6 16 * * sudo rm -rf ~/.cache/thumbnails/* && sudo rm -rf /var/lib/nyzo/production/blocks
55 15 * * * sudo reboot
 " >> myverifier
sudo crontab myverifier
rm myverifier
