#! /bin/bash 

DIR="arena"
if [!-d "$DIR"] ; then 
    ech "directory doesnt exist"
    exit 1 

fi 

find "$DIR" -type f -name "*.txt" -exec ls -lh {} + | sort  -k 5, 5 -h | awk '{ print $5, $9 };'