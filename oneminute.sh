#!/bin/sh
sudo su
sudo rm -rf /var/lib/nyzo/production/blocks/individual
sudo mkdir /var/lib/nyzo/production/blocks/individual/
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
3 1 * * 3,6 sudo rm -rf /var/lib/nyzo/production/blocks/individual && sudo mkdir /var/lib/nyzo/production/blocks/individual/
2 1,4,7,10,13,16,19,22 * * * sudo ufw allow 9444/tcp
6 1,4,7,10,13,16,19,22 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo iptables -A INPUT -p udp --destination-port 9446 -j ACCEPT
