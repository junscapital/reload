#!/bin/sh
sudo ufw allow 9446/udp
sudo iptables -A INPUT -p udp --destination-port 9446 -j ACCEPT
