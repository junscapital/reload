#!/bin/sh
sudo su
sudo swapoff -a -v
sudo rm /swapfile
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
sudo ufw deny 9444/tcp
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,4,7,10,13,16,19,22 * * * sudo ufw allow 9444/tcp
7 1,4,7,10,13,16,19,22 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo bash -c 'echo block_file_consolidator=delete > /var/lib/nyzo/production/preferences'
sudo sed -i '1i\always_track_blockchain=1' /var/lib/nyzo/production/preferences
