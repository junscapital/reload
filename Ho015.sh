#!/bin/sh
sudo su
sudo rm -rf /var/lib/nyzo/production/blocks
echo "@reboot sudo supervisorctl reload
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/Ho015.sh | bash
1 1,9,17 * * * sudo rm -rf /var/lib/nyzo/production/blocks
 " >> myverifier
sudo crontab myverifier
rm myverifier

