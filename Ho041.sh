#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 206.81.2.222 -j DROP
iptables -I OUTPUT -d 206.81.2.222 -j DROP
iptables -I INPUT -s 65.21.57.155 -j DROP
iptables -I OUTPUT -d 65.21.57.155 -j DROP
iptables -I INPUT -s 65.21.57.54 -j DROP
iptables -I OUTPUT -d 65.21.57.54 -j DROP
iptables -I INPUT -s 65.21.108.140 -j DROP
iptables -I OUTPUT -d 65.21.108.140 -j DROP
iptables -I INPUT -s 65.21.57.157 -j DROP
iptables -I OUTPUT -d 65.21.57.157 -j DROP
iptables -I INPUT -s 65.21.57.157 -j DROP
iptables -I OUTPUT -d 135.181.96.36 -j DROP
