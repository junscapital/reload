#!/bin/sh
cd /home/ubuntu/nyzoVerifier 
sudo git fetch origin pull/25/head:NCFP10
sudo git checkout NCFP10
sudo ./gradlew build
sudo supervisorctl reload 
