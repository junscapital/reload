#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "159.69.187.71:9444
45.77.1.127:9444
45.77.55.220:9444
159.69.248.118:9444
159.69.248.116:9444
159.69.51.147:9444
159.69.202.247:9444
116.203.28.123:9444
159.69.202.200:9444
159.69.202.144:9444
 " >> trusted_entry_points
