#!/bin/bash

Principal() {
    echo "Welcome to commiter gear"
    echo "This is ⚙️ gear second - fast commit"
    echo "------------------------------------------"
    echo "Commit type:"
    echo
    echo "1. 🐛fix"
    echo "2. ✨feat"
    echo "3. 👷build"
    echo "4. 🔖chore"
    echo "5. 🚀ci"
    echo "6. 💄style"
    echo "7. ♻️refactor"
    echo "8. ⚡️perf"
    echo "9. 🧪test"
    echo "10. 📝docs"
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
            type="♻️refactor" ;;
        8) 
            type="⚡️perf" ;;
        9) 
            type="🧪test" ;;
        10) 
            type="📝docs" ;;
        0) 
            echo "Bye 🤗"
            exit ;;
        *) 
            "Not a option." ; echo ; Principal ;;
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
        *) "Not a option." ; echo ; Principal ;;
    esac

    sleep 0.1
    echo "------------------------------------------"
    echo "🤗 Congratulations push your commit, bye"

}

Principal