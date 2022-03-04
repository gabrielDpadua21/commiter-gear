
if [ $SHELL == "/usr/bin/zsh" ] 
then
	sed -i '/<<<commiter>>>/,+6 d' ~/.zshrc
elif [ $SHELL == "bash" ] || [ $SHELL == "/bin/bash" ] 
then
	sed -i '/<<<commiter>>>/,+6 d' ~/.bashrc
else 
    echo "Shell not suported"
    exit 1
fi

rm -rf ~/.commiter

echo "Bye 😭"

exec $SHELL
