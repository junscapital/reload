#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 65.21.108.140 -j DROP
iptables -I OUTPUT -d 65.21.108.140 -j DROP
iptables -I INPUT -s 135.181.84.92 -j DROP
iptables -I OUTPUT -d 135.181.84.92 -j DROP
iptables -I INPUT -s 135.181.83.181 -j DROP
iptables -I OUTPUT -d 135.181.83.181 -j DROP
iptables -I INPUT -s 95.217.50.246 -j DROP
iptables -I OUTPUT -d 95.217.50.246 -j DROP
iptables -I INPUT -s 128.199.38.206 -j DROP
iptables -I OUTPUT -d 128.199.38.206 -j DROP
iptables -I INPUT -s 173.82.154.174 -j DROP
iptables -I OUTPUT -d 173.82.154.174 -j DROP
iptables -I INPUT -s 95.217.213.109 -j DROP
iptables -I OUTPUT -d 95.217.213.109 -j DROP
iptables -I INPUT -s 95.217.50.246 -j DROP
iptables -I OUTPUT -d 95.217.50.246 -j DROP
iptables -I INPUT -s 116.202.24.99 -j DROP
iptables -I OUTPUT -d 116.202.24.99 -j DROP
iptables -I INPUT -s 168.235.86.234 -j DROP
iptables -I OUTPUT -d 168.235.86.234 -j DROP
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
iptables -I INPUT -s 104.248.122.139 -j DROP
iptables -I OUTPUT -d 104.248.122.139 -j DROP
iptables -I INPUT -s 134.122.116.171 -j DROP
iptables -I OUTPUT -d 134.122.116.171 -j DROP
