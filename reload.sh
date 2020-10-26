#!/bin/bash
sudo su
echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'trI7NYEb' ssh root@68.183.142.37 'cat - >> /root/managed_verifiers'
sudo supervisorctl reload
