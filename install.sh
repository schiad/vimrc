#!/bin/sh

if [ -f "$HOME/.vimrc_old" ]; then
	echo "It would seem you already install my .vimrc file ?"
	echo "To reinstall it please unistall, run \"./uninstall.sh; ./install.sh\""
else
	if [ -f "$HOME/.vimrc" ]; then
		mv $HOME/.vimrc $HOME/.vimrc_old
		echo "A $HOME/.vimrc was detected and replace with my file .vimrc the old one was renamed as .vimrc_old."
		echo "Use ./uninstall.sh to go back."
	else
		echo "New .vimrc was installed in $HOME directory."
		echo "To uninstall run ./unistall.sh."
	fi
	cat vimrc >> $HOME/.vimrc
fi
