#!/bin/sh
sudo rm -rf ~/.cache/thumbnails/*
sudo rm -rf /var/lib/nyzo/production/blocks
cd /home/ubuntu/nyzoVerifier
sudo git reset --hard
sudo git pull origin master
sudo ./gradlew build
sudo supervisorctl reload
