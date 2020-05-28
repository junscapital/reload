#!/bin/sh
sudo su
sudo rm -rf /var/lib/nyzo/production/blocks/
sudo rm -rf /var/lib/nyzo/production/blocks/
mkdir /var/lib/nyzo/production/blocks/individual/
cd /var/lib/nyzo/production/blocks/individual/
wget https://seed.nyzo.co/seedTransactions/genesis
sudo ufw allow 9444/tcp
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
