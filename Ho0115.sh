#!/bin/sh
sudo su
curl https://raw.githubusercontent.com/junscapital/reload/master/banip.sh | bash
ipset del queue 216.173.113.97
