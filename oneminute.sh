#!/bin/sh
sudo sed -i '1i\always_track_blockchain=1' /var/lib/nyzo/production/preferences
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
sudo supervisorctl status
