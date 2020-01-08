#!/bin/sh

cd /home/ubuntu/nyzoVerifier
sudo ./gradlew build
sudo mkdir -p /var/lib/nyzo/production
sudo cp trusted_entry_points /var/lib/nyzo/production
sudo cp nyzoVerifier.conf /etc/supervisor/conf.d
sudo bash -c 'echo 0001x$(($RANDOM%82+6)) > /var/lib/nyzo/production/nickname'
sudo supervisorctl reload
sleep 2s
sudo renice -n -5 -p $(pgrep ^java$)
echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'Tin1@3456' ssh ubuntu@111.229.209.232 'cat - >> /home/ubuntu/managed_verifiers'
echo $(cat /var/lib/nyzo/production/nickname):$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'Tin1@3456' ssh ubuntu@111.229.209.232 'cat - >> /home/ubuntu/file1'
