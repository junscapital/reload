#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "140.82.23.217:9444
104.156.230.126:9444
149.28.206.54:9444
195.201.235.45:9444
78.47.217.35:9444
78.47.115.210:9444
149.248.16.4:9444
134.209.47.67:9444
45.32.131.34:9444
116.202.15.183:9444
 " >> trusted_entry_points
