#!/bin/sh
sudo su
sudo rm -rf ~/.cache/thumbnails/*
sudo rm -rf /var/lib/nyzo/production/blocks/
sudo rm -rf /var/lib/nyzo/production/blocks/
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
