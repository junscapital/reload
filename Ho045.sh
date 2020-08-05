#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "144.202.99.12:9444
159.69.248.117:9444
159.69.202.255:9444
116.203.138.176:9444
178.128.10.137:9444
142.44.160.138:9444
195.201.43.15:9444
195.201.40.232:9444
159.69.152.9:9444
159.69.216.65:9444
 " >> trusted_entry_points
