#!/bin/bash
#sudo su
#sudo rm -rf ~/.cache/thumbnails/*
#sudo rm -rf /var/lib/nyzo/production/blocks/
#sudo rm -rf /var/lib/nyzo/production/blocks/
#echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'trI7NYEb' ssh root@134.122.115.90 'cat - >> /root/managed_verifiers'
sudo supervisorctl reload
