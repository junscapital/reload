#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "138.201.186.55:9444
159.69.202.253:9444
155.138.204.95:9444
195.201.42.159:9444
165.227.3.242:9444
159.69.249.224:9444
167.71.183.64:9444
167.71.142.166:9444
167.99.48.183:9444
116.203.104.106:9444
 " >> trusted_entry_points
