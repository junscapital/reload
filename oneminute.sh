#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 1,12 * * * sudo ufw allow 9444/tcp && sudo supervisorctl reload
32 1,12 * * * sudo ufw deny 9444/tcp
2 9 * * * sudo ufw allow 9444/tcp && sudo supervisorctl reload
12 9 * * * sudo ufw deny 9444/tcp
3 6 16 * * sudo rm -rf ~/.cache/thumbnails/* && sudo rm -rf /var/lib/nyzo/production/blocks
55 15 * * * sudo reboot
 " >> myverifier
sudo crontab myverifier
rm myverifier
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
sudo supervisorctl status
