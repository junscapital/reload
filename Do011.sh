#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "165.22.31.112:9444
134.209.247.109:9444
159.89.113.234:9444
138.68.55.57:9444
142.93.174.198:9444
167.71.180.19:9444
116.203.183.61:9444
159.69.182.217:9444
206.189.232.78:9444
95.217.9.216:9444
 " >> trusted_entry_points
