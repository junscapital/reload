#!/bin/bash
sudo ufw enable
y && sudo ufw deny 9444/tcp
sudo ufw status
