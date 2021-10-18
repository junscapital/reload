#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 135.181.11.37 -j DROP
iptables -I OUTPUT -d 135.181.11.37 -j DROP
