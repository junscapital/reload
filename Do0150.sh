#!/bin/sh
sudo su
sudo rm -rf /var/lib/nyzo/production/blocks
echo "@reboot sudo supervisorctl reload
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/Do0150.sh | bash
1 4,12,20 * * * sudo rm -rf /var/lib/nyzo/production/blocks
 " >> myverifier
sudo crontab myverifier
rm myverifier
