#!/bin/sh
sudo swapoff -a -v
sudo rm /swapfile
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
sudo bash -c 'echo block_file_consolidator=delete > /var/lib/nyzo/production/preferences'
