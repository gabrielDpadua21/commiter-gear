#!/bin/bash

Main() {
    clear
    echo "Observation Haki 👀"
    echo "This is ⚙️ Observation Haki - the commando show status of your commits"
    echo "------------------------------------------"
    echo "Options: "
    echo 
    echo "1. Show Status: ✔️"
    echo "2. Show Logs: 📝"
    echo "3. Show Branchs: 📋"
    echo "0. Exit:🚪"
    echo
    echo -n "Choose a option? "
    read option
    case $option in
        1)  
            git status -s ;;
        2)
            git log --pretty=format:"%C(blue)%h %C(red)%d %C(white)%s - %C(cyan)%cn, %C(green)%cr";;
        3)
            git branch ;;
        0)
            echo "Bye 🤗"
            exit ;;
        *)
            "Not a option." ; echo ; Main ;;
    esac
}

Main