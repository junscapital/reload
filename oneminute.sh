#!/bin/sh
sudo ufw allow 9444/tcp
sudo supervisorctl reload
