#!/bin/sh
sudo su
iptables -F
#mittagessen
iptables -I INPUT -s 206.81.2.222 -j DROP
iptables -I OUTPUT -d 206.81.2.222 -j DROP
#nikolaus
iptables -I INPUT -s 65.21.57.155 -j DROP
iptables -I OUTPUT -d 65.21.57.155 -j DROP
#cover
iptables -I INPUT -s 65.21.57.54 -j DROP
iptables -I OUTPUT -d 65.21.57.54 -j DROP
#tapir0029
iptables -I INPUT -s 142.93.54.71 -j DROP
iptables -I OUTPUT -d 142.93.54.71 -j DROP
#stupidsexyflanders
iptables -I INPUT -s 65.21.108.140 -j DROP
iptables -I OUTPUT -d 65.21.108.140 -j DROP
