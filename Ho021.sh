#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 65.21.60.112 -j DROP
iptables -I OUTPUT -d 65.21.60.112 -j DROP
iptables -I INPUT -s 65.108.95.135 -j DROP
iptables -I OUTPUT -d 65.108.95.135 -j DROP
iptables -I INPUT -s 135.181.84.35 -j DROP
iptables -I OUTPUT -d 135.181.84.35 -j DROP
iptables -I INPUT -s 65.21.57.176 -j DROP
iptables -I OUTPUT -d 65.21.57.176 -j DROP
iptables -I INPUT -s 135.181.82.139 -j DROP
iptables -I OUTPUT -d 135.181.82.139 -j DROP
iptables -I INPUT -s 65.21.57.172 -j DROP
iptables -I OUTPUT -d 65.21.57.172 -j DROP
iptables -I INPUT -s 65.21.108.140 -j DROP
iptables -I OUTPUT -d 65.21.108.140 -j DROP
iptables -I INPUT -s 65.21.57.177 -j DROP
iptables -I OUTPUT -d 65.21.57.177 -j DROP
iptables -I INPUT -s 188.40.183.168 -j DROP
iptables -I OUTPUT -d 188.40.183.168 -j DROP
iptables -I INPUT -s 95.217.49.185 -j DROP
iptables -I OUTPUT -d 95.217.49.185 -j DROP
iptables -I INPUT -s 135.181.12.158 -j DROP
iptables -I OUTPUT -d 135.181.12.158 -j DROP
iptables -I INPUT -s 135.181.12.165 -j DROP
iptables -I OUTPUT -d 135.181.12.165 -j DROP
iptables -I INPUT -s 95.217.209.2 -j DROP
iptables -I OUTPUT -d 95.217.209.2 -j DROP
iptables -I INPUT -s 159.69.180.151 -j DROP
iptables -I OUTPUT -d 159.69.180.151 -j DROP
iptables -I INPUT -s 116.203.17.204 -j DROP
iptables -I OUTPUT -d 116.203.17.204 -j DROP
iptables -I INPUT -s 195.201.91.238 -j DROP
iptables -I OUTPUT -d 195.201.91.238 -j DROP
iptables -I INPUT -s 82.165.123.187 -j DROP
iptables -I OUTPUT -d 82.165.123.187 -j DROP
iptables -I INPUT -s 217.160.65.237 -j DROP
iptables -I OUTPUT -d 217.160.65.237 -j DROP
iptables -I INPUT -s 51.79.85.42 -j DROP
iptables -I OUTPUT -d 51.79.85.42 -j DROP
iptables -I INPUT -s 92.222.24.209 -j DROP
iptables -I OUTPUT -d 92.222.24.209 -j DROP
iptables -I INPUT -s 159.65.226.49 -j DROP
iptables -I OUTPUT -d 159.65.226.49 -j DROP
iptables -I INPUT -s 159.203.113.140 -j DROP
iptables -I OUTPUT -d 159.203.113.140 -j DROP
iptables -I INPUT -s 134.122.116.171 -j DROP
iptables -I OUTPUT -d 134.122.116.171 -j DROP
iptables -I INPUT -s 167.99.157.51 -j DROP
iptables -I OUTPUT -d 167.99.157.51 -j DROP
iptables -I INPUT -s 167.71.165.88 -j DROP
iptables -I OUTPUT -d 167.71.165.88 -j DROP
iptables -I INPUT -s 104.248.246.7 -j DROP
iptables -I OUTPUT -d 104.248.246.7 -j DROP
