#!/bin/bash

if [ -z "$2" ]
  then 
    echo "[!] Command usage: $0 <dest_user_email_address> <message_in_quotes>"
    exit
fi

#check if we have the public key
gpg --list-public-keys $1 > /dev/null 2>&1

if [ $? -ne 0 ]
  then
    gpg --search-keys $1
    gpg --list-public-keys $1 > /dev/null 2>&1
    if [ $? -ne 0 ]
      then
        echo [!] Can not find a public key for $1 on this computer. Aborting..
        exit
    fi
fi

echo $2 | gpg --encrypt --recipient $1 --sign --armour

