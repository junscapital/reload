#!/bin/sh
sudo su
ipset flush cycle
ipset add cycle 135.181.65.0/24
ipset add cycle 135.181.11.0/24
ipset add cycle 135.181.123.180
ipset add cycle 135.181.123.190
ipset add cycle 188.40.183.175
ipset add cycle 188.40.234.31
ipset add cycle 95.217.49.127
ipset add cycle 207.246.121.50
ipset add cycle 207.246.100.72
ipset add cycle 137.220.34.162
ipset add cycle 45.76.70.195
ipset add cycle 45.32.92.23
