#!/bin/bash

Principal() {
    echo "Welcome to commiter gear"
    echo "This is ⚙️ gear second - fast commit"
    echo "------------------------------------------"
    echo "branch type:"
    echo
    echo "1. 🐛fix"
    echo "2. ✨feat"
    echo "3. 👷build"
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
            type="🐛fix" ;;
        2) 
            type="✨feat" ;;
        3) 
            type="👷build" ;;
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
    read -p "commit message: " message

    sleep 0.1
    clear

    echo "This is your commit: $type: $message"
    echo "Confirm ? y/n"
    read confirm
    case $confirm in
        'y') 
           git commit -m "$type: $message"  ;;
        'n') 
            Principal ;;
        *) "Opção desconhecida." ; echo ; exit ;;
    esac

    sleep 0.1
    echo "------------------------------------------"
    echo "🤗 Congratulations push your commit, bye"

}

Principal