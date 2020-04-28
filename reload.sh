#!/bin/bash
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
