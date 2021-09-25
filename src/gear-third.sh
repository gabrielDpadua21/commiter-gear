#!/bin/bash

Principal() {
    echo "Welcome to commiter gear"
    echo "This is ⚙️ gear third - big commit"
    echo "------------------------------------------"
    echo "branch type:"
    echo
    echo "1. 🐛Fix"
    echo "2. ✨Feat"
    echo "3. 👷Build"
    echo "4. 🔖chore"
    echo "5. 🚀ci"
    echo "6. 💄style"
    echo "7. ♻️rrefactor"
    echo "8. ⚡️perf"
    echo "9. 🧪test"
    echo "0. 🚪exit"
    echo
    echo -n "Choose a option? "
    read opcao
    case $opcao in
        1) 
            type="🐛Fix" ;;
        2) 
            type="✨Feat" ;;
        3) 
            type="👷Build" ;;
        4) 
            type="🔖chore" ;;
        5) 
            type="🚀ci" ;;
        6) 
            type="💄style" ;;
        7) 
            type="♻️rrefactor" ;;
        8) 
            type="⚡️perf" ;;
        9) 
            type="🚪exit" ;;
        0) exit ;;
        *) "Opção desconhecida." ; echo ; Principal ;;
    esac

    sleep 0.1
    clear

    echo "Branch type is: $type"
    echo "------------------------------------------"
    echo "Scope:"
    read scope

    sleep 0.1
    clear

    echo "Branch type is: $type, Scope is: $scope"
    echo "------------------------------------------"
    read -p "commit message: " message
    

    sleep 0.1
    clear

    echo "This is your commit: $type: $message"
    echo "Confirm ? y/n"
    read confirm
    case $confirm in
        'y') 
           git commit -m "$type($scope): $message"  ;;
        'n') 
            Principal ;;
        *) "Opção desconhecida." ; echo ; exit ;;
    esac

    sleep 0.1
    echo "------------------------------------------"
    echo "🤗 Congratulations push your commit, bye"

}

Principal