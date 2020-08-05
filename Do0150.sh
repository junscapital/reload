#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "95.217.2.123:9444
116.202.101.194:9444
159.69.244.174:9444
78.47.115.209:9444
45.32.75.162:9444
149.248.12.102:9444
45.32.138.180:9444
45.63.87.119:9444
149.248.12.12:9444
159.69.37.124:9444
 " >> trusted_entry_points
