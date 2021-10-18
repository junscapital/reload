#!/bin/sh
iptables -F
iptables -I INPUT -s 135.181.11.37 -j DROP
iptables -I OUTPUT -s 135.181.11.37 -j DROP
iptables -I INPUT -d 135.181.11.37 -j DROP
iptables -I OUTPUT -d 135.181.11.37 -j DROP
