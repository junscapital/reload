#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "159.89.118.209:9444
165.22.30.138:9444
206.81.6.156:9444
144.202.102.60:9444
157.245.68.85:9444
157.245.45.169:9444
78.46.217.242:9444
128.199.35.189:9444
45.32.138.134:9444
116.202.10.231:9444
 " >> trusted_entry_points
