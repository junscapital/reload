#!/bin/sh
#sleep 600s
#sudo ifdown ens5
sudo iptables -t nat -A OUTPUT -p tcp --dport 9444 -j DNAT --to-destination 104.161.79.22:9444
