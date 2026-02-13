#!/bin/bash

services=("httpd" "mysqld")

for service in "${services[@]}"
do
    systemctl is-active --quiet $service
    if [ $? -ne 0 ]; then
        echo "$service is down!"
    else
        echo "$service is running."
    fi
done
