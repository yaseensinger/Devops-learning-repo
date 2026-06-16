#! /bin/bash

if [ -z "$1" ]; then 
    echo "no file provided"
    exit 1
fi

if [ ! -f "$1" ]; then 
    echo "file not found"
    exit 1 
fi

LINE_COUNT=$(wc -l <  "$1")
echo "the file $1 has $LINE_COUNT lines."
