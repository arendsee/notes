#!/usr/bin/env bash

i=$(cat 00uid)
newfile=notes/$i.md

if [[ -f $newfile ]]
then
    echo "'$newfile' already exists, the system is broken!"
    exit 1
fi

touch $newfile
echo "created $newfile"

echo $(( i + 1 )) > 00uid
