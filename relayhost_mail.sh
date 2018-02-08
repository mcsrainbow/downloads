#!/bin/bash
relayhost_item=$(grep relayhost /etc/postfix/main.cf || echo "No such relayhost")
echo -e "${relayhost_item}\nFrom $HOSTNAME" | mail -s "Relay Host Testing Mail From $HOSTNAME" $1
