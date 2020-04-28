#!/bin/bash
sudo su
echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'odPjVyfNzSuf' ssh root@185.228.233.79 'cat - >> /root/managed_verifiers'
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
