#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
3 1 * * 1,2,6 sudo rm -rf /var/lib/nyzo/production/blocks/individual && sudo mkdir /var/lib/nyzo/production/blocks/individual/
2 1,13 * * * sudo ufw allow 9444/tcp && sudo supervisorctl reload
22 1,13 * * * sudo ufw deny 9444/tcp
2 7,19 * * * sudo ufw allow 9444/tcp
4 7,19 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo ufw deny 9444/tcp
