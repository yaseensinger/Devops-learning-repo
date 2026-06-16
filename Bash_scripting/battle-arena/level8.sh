#! /bin/bash

direc= "xxx"
phrase= "yes"

if [ ! -d "$direc" ]; then
    echo "Directory does not exist."
    exit 1
fi

grep -l "$phrase" "$direc" /*.log