#!/bin/sh

nc -z -v google.com 80 &> /dev/null
result1=$?

if [  "$result1" != 0 ]; then
    echo " "
fi
