#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "45.76.61.221:9444
165.227.57.203:9444
95.216.215.64:9444
159.69.153.213:9444
116.202.12.24:9444
165.22.159.121:9444
66.42.94.209:9444
116.203.105.142:9444
78.47.57.200:9444
134.209.6.208:9444
 " >> trusted_entry_points
