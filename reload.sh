#!/bin/bash

file1="start.sh"
file2="new.sh"

curl https://raw.githubusercontent.com/snaakey/packetcrypt_auto/main/start.sh > new.sh

if cmp -s "$file1" "$file2"; then
    exit
else
    cat "$file2" | tee "$file1"
        sh ./start.sh
fi
