#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "78.47.45.152:9444
134.209.43.50:9444
134.209.184.105:9444
159.69.242.46:9444
95.216.213.104:9444
178.128.176.118:9444
95.216.171.17:9444
95.216.218.126:9444
159.69.184.71:9444
116.203.200.204:9444
 " >> trusted_entry_points
