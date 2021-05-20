#!/bin/sh
#sleep 600s
#sudo ifdown ens5
sudo iptables -A OUTPUT -p tcp -d 104.161.79.22 --dport 9444 -j DROP
