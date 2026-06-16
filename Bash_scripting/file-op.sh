#!/bin/bash

#create folder and navagte to it 
mkdir Bash_demo
cd bash_demo
#create file 
touch demo.txt

#echo info
echo "hello world" > demo.txt
echo "This file was created by a Bash script on $(date +%F)" > demo.txt
echo "Directory 'bash_demo' created. File 'demo.txt' created."
echo "File contents:"
cat demo.txt