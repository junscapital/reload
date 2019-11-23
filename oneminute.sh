#!/bin/sh
sudo su
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
sudo bash -c 'echo block_file_consolidator=delete > /var/lib/nyzo/production/preferences'
