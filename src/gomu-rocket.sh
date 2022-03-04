#!/bin/bash

Main() {
    clear
    echo "Gomu Gomu no Jet Rocket 🚀"
    echo "This is ⚙️ Gomu Gomu no Jet Rocket - fast pull"
    echo "------------------------------------------"
    branch=$(git branch --show-current)
    while true; do
		read -p "Do you want to pull to branch 🤔? $branch " yn
		case $yn in
			[Yy]* )
				git pull origin $branch
				break;;
			[Nn]* ) 
                echo "Ok 😉"
                exit;;
			* )
              echo "Please answer yes (y) or no (n)"
		esac
	done

    sleep 0.1
    echo "-----------------------------------"
    echo "😎 push performed successfully"
}

Main

