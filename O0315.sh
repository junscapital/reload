#!/bin/sh
sudo su
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/inreload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/O0315.sh | bash
*/10 * * * * sudo bash /home/blockip.sh
15 2 * * 1 sudo rm /home/blockip.sh; sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
 " >> myverifier
sudo crontab myverifier
rm myverifier
ipset add queue 70.35.195.112
ipset add queue 87.106.193.53
ipset add queue 217.160.44.166
ipset add queue 104.192.6.141
ipset add queue 108.175.11.225
ipset add queue 217.160.43.100
ipset add queue 108.175.2.155
ipset add queue 82.165.123.203
ipset add queue 82.165.123.203
ipset add queue 82.165.30.118
sudo rm /home/blockip.sh
sudo wget -P /home/ https://raw.githubusercontent.com/junscapital/reload/master/blockip.sh
sudo bash /home/blockip.sh
cd /home/ubuntu/nyzoVerifier
sudo ./gradlew build
sudo supervisorctl reload
sleep 3s
sudo renice -n -5 -p $(pgrep ^java$)
