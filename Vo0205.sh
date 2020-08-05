#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "149.28.209.48:9444
157.230.99.22:9444
167.71.229.90:9444
95.217.2.195:9444
142.93.154.33:9444
159.69.154.10:9444
195.201.235.40:9444
159.69.15.66:9444
95.217.13.102:9444
159.69.154.4:9444
 " >> trusted_entry_points
