#!/bin/sh


CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

# fetching the default icon-scripts from defaults folder
all=" "
# custom
for entry in $CURRENT_DIR/custom/*
do
    all="$all$(sh $entry)"
done
# defaults
for entry in $CURRENT_DIR/default/*
do
    all="$all$(sh $entry)"
done

echo $all
