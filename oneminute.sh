#!/bin/sh
sudo su
sudo swapoff -a -v
sudo rm /swapfile
sudo apt clean
sudo rm -rf ~/.cache/thumbnails/*
sudo ufw allow 9444/tcp
sudo ufw status
