#!/bin/bash
echo "Enter service name."
read service_name
if [[ $(systemctl is-active ${service_name}) ==  "active" ]] ;then
        echo "Service is active"
else
        echo "Restarting service..."
        systemctl restart ${service_name}
fi
