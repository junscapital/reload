#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 65.21.60.112 -j DROP
iptables -I OUTPUT -d 65.21.60.112 -j DROP
iptables -I INPUT -s 135.181.84.35 -j DROP
iptables -I OUTPUT -d 135.181.84.35 -j DROP
iptables -I INPUT -s 95.216.51.132 -j DROP
iptables -I OUTPUT -d 95.216.51.132 -j DROP
iptables -I INPUT -s 95.217.50.246 -j DROP
iptables -I OUTPUT -d 95.217.50.246 -j DROP
iptables -I INPUT -s 147.135.208.126 -j DROP
iptables -I OUTPUT -d 147.135.208.126 -j DROP
iptables -I INPUT -s 49.12.2.247 -j DROP
iptables -I OUTPUT -d 49.12.2.247 -j DROP
iptables -I INPUT -s 95.217.213.109 -j DROP
iptables -I OUTPUT -d 95.217.213.109 -j DROP
iptables -I INPUT -s 116.203.17.204 -j DROP
iptables -I OUTPUT -d 116.203.17.204 -j DROP
iptables -I INPUT -s 116.202.24.99 -j DROP
iptables -I OUTPUT -d 116.202.24.99 -j DROP
iptables -I INPUT -s 49.12.76.62 -j DROP
iptables -I OUTPUT -d 49.12.76.62 -j DROP
iptables -I INPUT -s 198.244.149.209 -j DROP
iptables -I OUTPUT -d 198.244.149.209 -j DROP
iptables -I INPUT -s 217.160.61.164 -j DROP
iptables -I OUTPUT -d 217.160.61.164 -j DROP
iptables -I INPUT -s 212.227.10.166 -j DROP
iptables -I OUTPUT -d 212.227.10.166 -j DROP
iptables -I INPUT -s 192.227.229.144 -j DROP
iptables -I OUTPUT -d 192.227.229.144 -j DROP
iptables -I INPUT -s 139.64.165.115 -j DROP
iptables -I OUTPUT -d 139.64.165.115 -j DROP
iptables -I INPUT -s 159.65.226.49 -j DROP
iptables -I OUTPUT -d 159.65.226.49 -j DROP
iptables -I INPUT -s 159.203.113.140 -j DROP
iptables -I OUTPUT -d 159.203.113.140 -j DROP
iptables -I INPUT -s 134.122.116.171 -j DROP
iptables -I OUTPUT -d 134.122.116.171 -j DROP
iptables -I INPUT -s 167.99.157.51 -j DROP
iptables -I OUTPUT -d 167.99.157.51 -j DROP

