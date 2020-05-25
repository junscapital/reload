#!/bin/sh
sudo rm -rf /var/lib/nyzo/production/blocks/individual/
sudo mkdir /var/lib/nyzo/production/blocks/individual/
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
