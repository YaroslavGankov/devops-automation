#!/bin/bash
#script for testing aws Network Load Balancer
#script goes to IP and list files
#script can got first ($1) parameter (IP or domain-name of server) and list files in the share of file-server samba. It do this by endless loop
if [[ "$1" != "" ]] ; then
while true ; do
        echo -e "\nls" | smbclient //$1/skiffshare
done
        echo "ololo"
else
        first_server=3.218.249.49
        second_server=3.208.71.254
        echo "-------------"
        echo -e "\nls" | smbclient //$first_server/skiffshare
        echo "-------------"
        echo -e "\nls" | smbclient //$second_server/skiffshare
fi
