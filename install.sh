mkdir ~/.commiter
cp src/version.sh ~/.commiter/version.sh
cp src/help.sh ~/.commiter/help.sh
cp src/gear-second.sh ~/.commiter/gear-second.sh
cp src/gear-third.sh ~/.commiter/gear-third.sh
cp src/gomu-pistol.sh ~/.commiter/gomu-pistol.sh
cp src/gomu-rocket.sh ~/.commiter/gomu-rocket.sh
cp src/haki.sh ~/.commiter/haki.sh

if [ $SHELL == "/usr/bin/zsh" ] || [ $SHELL == "/bin/zsh" ] 
then
  touch ~/.commiter.zsh
	echo '#<<<commiter>>>' >> ~/.commiter.zsh
    echo 'alias gs="bash ~/.commiter/gear-second.sh"' >> ~/.commiter.zsh
    echo 'alias gt="bash ~/.commiter/gear-third.sh"' >> ~/.commiter.zsh
    echo 'alias gv="bash ~/.commiter/version.sh"' >> ~/.commiter.zsh
    echo 'alias gh="bash ~/.commiter/help.sh"' >> ~/.commiter.zsh
    echo 'alias gj="bash ~/.commiter/gomu-pistol.sh"' >> ~/.commiter.zsh
    echo 'alias gr="bash ~/.commiter/gomu-rocket.sh"' >> ~/.commiter.zsh
    echo 'alias haki="bash ~/.commiter/haki.sh"' >> ~/.commiter.zsh
	echo '#<<<commiter>>' >> ~/.commiter.zsh
  echo '[[ ! -f ~/.commiter.zsh ]] || source ~/.commiter.zsh' >> ~/.zshrc
elif [ $SHELL == "bash" ] || [ $SHELL == "/bin/bash" ]
then
	echo '#<<<commiter>>>' >> ~/.bashrc
    echo 'alias gs="bash ~/.commiter/gear-second.sh"' >> ~/.bashrc
    echo 'alias gt="bash ~/.commiter/gear-third.sh"' >> ~/.bashrc
    echo 'alias gv="bash ~/.commiter/version.sh"' >> ~/.bashrc
    echo 'alias gh="bash ~/.commiter/help.sh"' >> ~/.bashrc
    echo 'alias gj="bash ~/.commiter/gomu-pistol.sh"' >> ~/.bashrc
    echo 'alias gr="bash ~/.commiter/gomu-rocket.sh"' >> ~/.bashrc
	echo '#<<<commiter>>' >> ~/.bashrc
else 
    echo "Shell not suported"
    exit 1
fi

echo "Install complete 😁"
echo "To test exec gv command in you terminal or gh to ask help"
echo "🤗 now push your commits, bye"

exec $SHELL
