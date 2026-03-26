#!/bin/bash
LOG_DIR="/var/log"
FILE_LIST="filelist.txt"
BACKUP_FILE="bk-$(date +%F).tar.gz"

find ${LOG_DIR} -type f -mtime +2 > ${FILE_LIST}
if [[ ! -s ${FILE_LIST} ]]; then
        echo "No files to delete."
        exit 0
fi
#take backup
echo "Taking backup of the files..."
tar -zcf ${BACKUP_FILE}  -T ${FILE_LIST}
echo "Deleteing file.."
while read -r filename;do
        rm ${filename}
done < ${FILE_LIST}
rm ${FILE_LIST}

