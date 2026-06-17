#! /bin/bash

DIR= "arena"
Log-file= "file_log.txt"

if [ ! -d "$DIR"] ; then 
    echo "directory does not exist"
    exit 1 
fi

fswatch -r "$DIR" | while read event; do 
    if [ -e "$event" ]; then
        echo "$(date +'%Y-%m-%d %H:%M:%S') File modified/created: $event" >> "$file_log"
    else
        echo "$(date +'%Y-%m-%d %H:%M:%S') File deleted: $event" >> "$file_log"
    fi
done