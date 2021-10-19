#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 135.181.11.37 -j DROP
iptables -I OUTPUT -d 135.181.11.37 -j DROP
iptables -I INPUT -s 135.181.83.181 -j DROP
iptables -I OUTPUT -d 135.181.83.181 -j DROP
iptables -I INPUT -s 65.21.57.172 -j DROP
iptables -I OUTPUT -d 65.21.57.172 -j DROP
iptables -I INPUT -s 95.217.50.246 -j DROP
iptables -I OUTPUT -d 95.217.50.246 -j DROP
