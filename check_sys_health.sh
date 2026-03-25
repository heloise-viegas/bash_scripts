
#!/bin/bash

echo "Checking system CPU status..."
uptime
echo "Checking system Memory(RAM) status...."
free -h
echo "Checking Disk usage..."
df -h
echo "Checking failed processes..."
FAILED=$(systemctl --failed --no-legend)
if [[ -z ${FAILED} ]]; then
        echo "No failed services."
else
        while read -r service;   
        do
           echo "${service} has failed"
        done <<< ${FAILED}
fi
