#!/bin/sh
sudo supervisorctl reload
sudo sed -i "s/200M/300M/g"  /etc/supervisor/conf.d/nyzoVerifier.conf
