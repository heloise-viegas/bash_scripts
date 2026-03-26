#!/bin/bash
find /var/log -type f -mtime +2 > filelist.txt
cat filelist.txt
#take backup
echo "Taking backup of the files..."
tar -zcf "bk-$(date +%F).tar.gz"  -T filelist.txt
echo "Deleteing file.."
while read -r filename;do
        rm ${filename}
done < filelist.txt
rm ${filelist.txt}

