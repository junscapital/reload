#!/bin/sh
sudo iptables -A INPUT -p udp --destination-port 9446 -j ACCEPT
