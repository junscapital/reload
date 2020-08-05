#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "159.69.191.67:9444
78.47.64.254:9444
45.76.81.175:9444
149.248.19.226:9444
134.209.227.197:9444
149.28.34.143:9444
45.76.90.90:9444
149.28.207.104:9444
149.28.192.96:9444
149.28.214.6:9444
 " >> trusted_entry_points
