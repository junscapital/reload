#!/bin/sh
sudo su
sudo echo 'StrictHostKeyChecking no'>>/etc/ssh/ssh_config
sudo apt update
sudo dpkg --configure -a
sudo apt-get -yqq -f install && sudo apt-get -yqq install sshpass && cat /var/lib/nyzo/production/verifier_private_seed | sshpass -p 'Din1@3456' ssh root@167.172.247.243 'cat - >> /var/lib/nyzo/production/managed_verifiers'
