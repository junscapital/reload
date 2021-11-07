#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 65.21.109.206 -j DROP
iptables -I OUTPUT -d 65.21.109.206 -j DROP
iptables -I INPUT -s 65.108.89.188 -j DROP
iptables -I OUTPUT -d 65.108.89.188 -j DROP
iptables -I INPUT -s 65.21.57.174 -j DROP
iptables -I OUTPUT -d 65.21.57.174 -j DROP
iptables -I INPUT -s 65.108.90.241 -j DROP
iptables -I OUTPUT -d 65.108.90.241 -j DROP
iptables -I INPUT -s 65.21.56.95 -j DROP
iptables -I OUTPUT -d 65.21.56.95 -j DROP
iptables -I INPUT -s 65.108.95.239 -j DROP
iptables -I OUTPUT -d 65.108.95.239 -j DROP
iptables -I INPUT -s 135.181.82.157 -j DROP
iptables -I OUTPUT -d 135.181.82.157 -j DROP
iptables -I INPUT -s 95.216.147.47 -j DROP
iptables -I OUTPUT -d 95.216.147.47 -j DROP
iptables -I INPUT -s 65.21.57.178 -j DROP
iptables -I OUTPUT -d 65.21.57.178 -j DROP
iptables -I INPUT -s 65.108.90.163 -j DROP
iptables -I OUTPUT -d 65.108.90.163 -j DROP
iptables -I INPUT -s 95.217.177.182 -j DROP
iptables -I OUTPUT -d 95.217.177.182 -j DROP
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
