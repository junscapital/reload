#!/bin/sh
sudo rm -rf /var/lib/nyzo/production/blocks/
sudo rm -rf /var/lib/nyzo/production/blocks/
sudo ufw allow 9444/tcp
sudo supervisorctl reload
