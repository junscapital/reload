#!/bin/sh
sudo ufw allow 9444/tcp
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
sudo supervisorctl status
