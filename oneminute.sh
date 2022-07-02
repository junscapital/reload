#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 104.161.79.22 -j DROP
iptables -I OUTPUT -d 104.161.79.22 -j DROP
