
if [ $SHELL == "/usr/bin/zsh" ] 
then
	sed -i '/<<<commiter>>>/,+5 d' ~/.zshrc
elif [ $SHELL == "bash" ] 
then
	sed -i '/<<<commiter>>>/,+5 d' ~/.zshrc
else 
    echo "Shell not suported"
    exit 1
fi

rm -rf ~/.commiter

echo "Bye 😭"

exec $SHELL
