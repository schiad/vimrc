#!/bin/sh

if [ -e $HOME/.vimrc_old ]; then
	mv $HOME/.vimrc_old $HOME/.vimrc
	echo "Your old .vimrc was restored."
else
	echo "Your old vimrc was not found."
fi
