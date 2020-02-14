#!/bin/bash
sudo supervisorctl reload
sleep 8s
sudo renice -n -5 -p $(pgrep ^java$)
