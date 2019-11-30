#!/bin/sh
sudo su
sudo swapoff -a -v
sudo rm /swapfile
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
cd /var/lib/nyzo/production/blocks
sudo rm -rf 002 003 004 005 
sudo rm -rf /var/lib/nyzo/production/blocks/individual
sudo mkdir /var/lib/nyzo/production/blocks/individual/
sudo bash -c 'echo block_file_consolidator=delete > /var/lib/nyzo/production/preferences'
sudo sed -i '1i\always_track_blockchain=1' /var/lib/nyzo/production/preferences
sudo supervisorctl reload
sleep 5s
sudo ufw deny 9444/tcp
