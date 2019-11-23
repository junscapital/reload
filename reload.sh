#!/bin/bash
sudo su
cd /home/
mkdir ubuntu
cd ubuntu
sudo ufw allow 9444/tcp
sudo apt update
sudo apt install haveged openjdk-8-jdk supervisor -y && sudo git clone https://github.com/n-y-z-o/nyzoVerifier.git
cd nyzoVerifier
sudo ./gradlew build
sudo mkdir -p /var/lib/nyzo/production
sudo cp trusted_entry_points /var/lib/nyzo/production
sudo cp nyzoVerifier.conf /etc/supervisor/conf.d
sudo bash -c 'echo NRGGTR$(($RANDOM%21)) > /var/lib/nyzo/production/nickname'
sudo supervisorctl reload
sleep 2s
sudo renice -n -5 -p $(pgrep ^java$)
echo "@reboot curl https://raw.githubusercontent.com/junscapital/reload/master/reload.sh | bash
1,11,21,31,41,51 * * * * curl https://raw.githubusercontent.com/junscapital/reload/master/oneminute.sh | bash
2 2,8,14,20 * * * sudo ufw allow 9444/tcp
12 2,8,14,20 * * * sudo ufw deny 9444/tcp
 " >> myverifier
sudo crontab myverifier
rm myverifier
sudo ufw enable
sudo ufw allow 22 && sudo ufw reload
sudo iptables -A INPUT -p udp --destination-port 9446 -j ACCEPT
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
