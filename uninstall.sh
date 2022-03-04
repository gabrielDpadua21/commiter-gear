
if [ $SHELL == "/usr/bin/zsh" ] 
then
	sed -i '/<<<commiter>>>/,+7 d' ~/.zshrc
elif [ $SHELL == "bash" ] 
then
	sed -i '/<<<commiter>>>/,+7 d' ~/.zshrc
else 
    echo "Shell not suported"
    exit 1
fi

rm -rf ~/.commiter

echo "Bye 😭"

exec $SHELL
