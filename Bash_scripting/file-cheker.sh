#! /bin/bash

read -p "please enter a file name to check" file

if [-e "file"]; then
    echo "file $file exists" 

    
    if [-r "file"];then 
        echo "file is readable"
    else
        echo "file is not readble"
    fi 


    if [-w "file"];then 
        echo "file is writeable"
    else
        echo "file is not writeable"
    fi


    if [-x "file"];then 
        echo "file is executable"
    else
        echo "file is not executable"
    fi


else 
    echo "file $file does not exist"


fi 