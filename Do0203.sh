#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "95.216.218.118:9444
116.203.156.45:9444
104.248.79.19:9444
159.65.46.40:9444
207.148.17.106:9444
104.248.76.113:9444
80.240.19.168:9444
159.69.119.195:9444
206.189.195.15:9444
140.82.22.151:9444
 " >> trusted_entry_points
