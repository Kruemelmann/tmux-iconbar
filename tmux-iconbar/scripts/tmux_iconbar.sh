#!/bin/sh

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# fetching the default icon-scripts from defaults folder
all=""
# defaults
for entry in $CURRENT_DIR/default/*
do
    all="$all$(sh $entry)"
done
# custom
for entry in $CURRENT_DIR/custom/*
do
    all="$all$(sh $entry)"
done

echo $(echo $all; IFS=','; echo "${ARRAY[*]}")

