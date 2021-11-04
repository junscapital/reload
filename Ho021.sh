#!/bin/sh
sudo su
iptables -F
iptables -I INPUT -s 104.248.16.236 -j DROP
iptables -I OUTPUT -d 104.248.16.236 -j DROP
iptables -I INPUT -s 65.21.57.155 -j DROP
iptables -I OUTPUT -d 65.21.57.155 -j DROP
iptables -I INPUT -s 65.21.57.54 -j DROP
iptables -I OUTPUT -d 65.21.57.54 -j DROP
iptables -I INPUT -s 207.154.251.20 -j DROP
iptables -I OUTPUT -d 207.154.251.20 -j DROP
iptables -I INPUT -s 65.21.108.140 -j DROP
iptables -I OUTPUT -d 65.21.108.140 -j DROP
iptables -I INPUT -s 159.223.101.136 -j DROP
iptables -I OUTPUT -d 159.223.101.136 -j DROP
iptables -I INPUT -s 142.93.54.71 -j DROP
iptables -I OUTPUT -d 142.93.54.71 -j DROP
