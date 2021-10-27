#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 65.108.51.79 -j DROP
iptables -I OUTPUT -d 65.108.51.79 -j DROP
iptables -I INPUT -s 65.21.252.76 -j DROP
iptables -I OUTPUT -d 65.21.252.76 -j DROP
iptables -I INPUT -s 65.21.57.176 -j DROP
iptables -I OUTPUT -d 65.21.57.176 -j DROP
iptables -I INPUT -s 65.21.250.11 -j DROP
iptables -I OUTPUT -d 65.21.250.11 -j DROP
iptables -I INPUT -s 135.181.82.139 -j DROP
iptables -I OUTPUT -d 135.181.82.139 -j DROP
iptables -I INPUT -s 65.108.61.164 -j DROP
iptables -I OUTPUT -d 65.108.61.164 -j DROP
iptables -I INPUT -s 65.21.57.177 -j DROP
iptables -I OUTPUT -d 65.21.57.177 -j DROP
