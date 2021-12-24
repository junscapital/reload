#!/bin/sh
sudo su
ipset flush cycle
ipset add queue 198.135.57.0/24
