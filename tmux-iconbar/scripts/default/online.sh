#!/bin/sh

online=$(nc -zw1 google.com 443 >/dev/null 2>&1)
if !($online); then
    echo " "
    exit 1
fi
