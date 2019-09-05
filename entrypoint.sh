#!/bin/sh

swift auth &>/dev/null

if [ $? -eq 0 ]; then
    echo "Successfully authenticated"
else
    echo "[Error] Unable to authenticate against Swift provider."
    echo -e "\tPlease ensure all your keystone variables are set and check your credentials."
    exit 1
fi