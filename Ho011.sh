#!/bin/sh
sudo su
ipset flush cycle
ipset add cycle 135.125.238.106
ipset add cycle 142.44.242.233
ipset add cycle 135.125.239.192
