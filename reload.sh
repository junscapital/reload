#!/bin/bash
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1 1,13 * * * sudo ufw allow 9444/tcp
11 1,13 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo ufw enable
sudo ufw allow 22
sudo iptables -A INPUT -p udp --destination-port 9446 -j ACCEPT
sudo supervisorctl reload
sudo renice -n -5 -p $(pgrep ^java$)
