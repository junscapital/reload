#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 65.21.110.223 -j DROP
iptables -I OUTPUT -d 65.21.110.223 -j DROP
iptables -I INPUT -s 135.125.233.31 -j DROP
iptables -I OUTPUT -d 135.125.233.31 -j DROP
iptables -I INPUT -s 95.216.211.114 -j DROP
iptables -I OUTPUT -d 95.216.211.114 -j DROP
iptables -I INPUT -s 135.125.233.8 -j DROP
iptables -I OUTPUT -d 135.125.233.8 -j DROP
iptables -I INPUT -s 65.21.104.7 -j DROP
iptables -I OUTPUT -d 65.21.104.7 -j DROP
iptables -I INPUT -s 51.195.119.116 -j DROP
iptables -I OUTPUT -d 51.195.119.116 -j DROP
