#!/bin/sh
sudo su
rm /var/lib/nyzo/production/trusted_entry_points
cd /var/lib/nyzo/production/
echo "verifier0.nyzo.co:9444
verifier1.nyzo.co:9444
verifier2.nyzo.co:9444
verifier3.nyzo.co:9444
verifier4.nyzo.co:9444
verifier5.nyzo.co:9444
verifier6.nyzo.co:9444
verifier7.nyzo.co:9444
verifier8.nyzo.co:9444
verifier9.nyzo.co:9444
 " >> trusted_entry_points
