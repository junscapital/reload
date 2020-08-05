#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "134.209.249.33:9444
95.216.215.149:9444
209.250.234.112:9444
45.77.86.136:9444
159.89.35.193:9444
116.203.200.206:9444
159.69.203.248:9444
116.202.8.194:9444
159.69.242.45:9444
116.203.189.8:9444
 " >> trusted_entry_points
