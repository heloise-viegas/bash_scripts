#!/bin/bash
echo "Enter service name."
read service_name
if [[ ${service_name} == "" ]]; then
        echo "Service name cannot be empty."
        exit 1
fi

if [[ $(systemctl is-active ${service_name}) ==  "active" ]] ;then
        echo "Service is active"
else
        echo "Service is down..Restarting service..."
        systemctl restart ${service_name}
        if [[ $(systemctl is-active ${service_name}) ==  "active" ]] ;then
                echo "Service restarted successfully."
        else
                echo "Failed to restart service."
        fi
fi
