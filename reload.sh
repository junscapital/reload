#!/bin/bash
sudo ufw allow 22
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
sudo supervisorctl status

