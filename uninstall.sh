

if [ $SHELL == "/usr/bin/zsh" ] 
then
    cp ~/.commiter/.zshrc-bkp ~/.zshrc
elif [ $SHELL == "bash" ] 
then
    cp ~/.commiter/.bashrc-bkp ~/.bashrc
else 
    echo "Shell not suported"
    exit 1
fi

rm -rf ~/.commiter

echo "Bye 😭"

exec $SHELL