#!/bin/bash

echo "----Script to alert if disk usage is above 80%---------"

df -h | awk '$5+0 > 1 { print "Alert: "$1" is "$5" used"}'
