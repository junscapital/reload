#!/bin/sh
echo "@reboot sudo supervisorctl reload
5 0,3,6,9,12,15,18,21 * * * sudo rm -rf /var/lib/nyzo/production/blocks
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/senque.sh | bash
 " >> myverifier
sudo crontab myverifier
rm myverifier
