#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "159.69.248.114:9444
45.63.55.142:9444
198.199.69.242:9444
45.63.93.35:9444
159.69.203.27:9444
116.203.142.47:9444
167.71.180.149:9444
78.46.217.241:9444
128.199.35.195:9444
45.32.137.139:9444
 " >> trusted_entry_points
