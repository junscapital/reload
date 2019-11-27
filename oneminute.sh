#!/bin/sh
sudo supervisorctl reload
sleep 5s
sudo renice -n -5 -p $(pgrep ^java$)
sudo ufw deny 9444/tcp
