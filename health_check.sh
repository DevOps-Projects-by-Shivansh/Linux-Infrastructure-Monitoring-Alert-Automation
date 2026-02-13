#!/bin/bash

echo "Checking CPU usage..."
top -bn1 | grep "Cpu(s)"

echo "Checking Memory usage..."
free -m

echo "Checking Disk usage..."
df -h

echo "Checking services..."
systemctl status httpd
systemctl status mysqld
