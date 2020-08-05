#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "159.69.151.68:9444
167.71.189.81:9444
195.201.217.213:9444
116.203.146.237:9444
140.82.33.10:9444
144.202.25.56:9444
140.82.23.122:9444
116.202.9.222:9444
95.216.223.42:9444
116.203.155.41:9444
 " >> trusted_entry_points
