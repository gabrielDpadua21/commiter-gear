#!/bin/bash

Principal() {
	clear
    echo "Gear Third 🎈"
    echo "This is ⚙️ gear third - big commit"
    echo "------------------------------------------"
    echo "Commit type:"
    echo
    echo "1. fix:🐞"
    echo "2. feat:✨"
    echo "3. build:👷"
    echo "4. chore:🔖"
    echo "5. ci:🚀"
    echo "6. style:💄"
    echo "7. refactor:♻️"
    echo "8. perf:⚡️"
    echo "9. test:🧪"
    echo "10. docs:📝"
    echo "0. exit:🚪"
    echo
    echo -n "Choose a option? "
    read opcao
     case $opcao in
        1) 
            type="fix" 
            emoji="🐞" ;;
        2) 
            type="feat" 
            emoji="✨" ;;
        3) 
            type="build" 
            emoji="👷" ;;
        4) 
            type="chore" 
            emoji="🔖" ;;
        5) 
            type="ci" 
            emoji="🚀" ;;
        6) 
            type="style" 
            emoji="💄" ;;
        7) 
            type="refactor" 
            emoji="♻️" ;;
        8) 
            type="perf" 
            emoji="⚡️" ;;
        9) 
            type="test" 
            emoji="🧪" ;;
        10) 
            type="docs" 
            emoji="📝" ;;
        0) 
            echo "Bye 🤗"
            exit ;;
        *) 
            "Not a option." ; echo ; Principal ;;
    esac

    sleep 0.1
    clear

    echo "Commit type is: $type"
    echo "------------------------------------------"
    read -p "commit scope: " scope

    sleep 0.1
    clear

    echo "Commit type is: $type - Scope is: $scope"
    echo "------------------------------------------"
    read -p "commit message: " message
    

    sleep 0.1
    clear

	echo "This is your commit: $type($scope):$emoji $message"
	while true; do
		read -p "Confirm the commit ? y/n " yn
		case $yn in
			[Yy]* )
				git commit -m "$type($scope):$emoji $message"
				break;;
			[Nn]* ) Principal;;
			* ) echo "Please answer yes (y) or no (n)"
		esac
	done


    sleep 0.1
    echo "------------------------------------------"
    echo "🤗 Congratulations push your commit, bye"

}

Principal
