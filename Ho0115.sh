#!/bin/sh
sudo su
ipset flush queue
curl https://raw.githubusercontent.com/junscapital/reload/master/banip.sh | bash
