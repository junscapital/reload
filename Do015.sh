#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "45.32.135.209:9444
116.203.183.7:9444
159.65.252.128:9444
155.138.224.170:9444
108.61.171.52:9444
95.217.7.129:9444
159.69.109.84:9444
95.216.216.83:9444
95.216.220.138:9444
78.47.115.208:9444
 " >> trusted_entry_points
