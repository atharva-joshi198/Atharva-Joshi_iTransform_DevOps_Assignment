#!/bin/bash

ctrlc_count=0

function no_ctrlc()
{
    let ctrlc_count++
    echo
    if [[ $ctrlc_count == 1 ]]; then
        echo "Stop that."
    elif [[ $ctrlc_count == 2 ]]; then
        echo "Once more and I quit."
    else
        echo "That's it.  I quit."
        exit
    fi
}

PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")

select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "you chose choice 1"
            ;;
        "Option 2")
            echo "you chose choice 2"
            ;;
        "Option 3")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
             break
                        ;;
        *) 
            trap no_ctrlc SIGINT

            while true
            do
                echo Sleeping
                sleep 10
            done
        echo "invalid option $REPLY";;
        
    esac

done
