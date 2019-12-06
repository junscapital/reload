#!/bin/bash
sudo su
sudo swapoff -a -v
sudo rm /swapfile
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
sudo supervisorctl reload
sudo renice -n -5 -p $(pgrep ^java$)
