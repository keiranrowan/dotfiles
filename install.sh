#!/bin/bash

### Emacs ###

# if .emacs exists, backup
if [ -e ~/.emacs ]
then
    if [ -e ~/.emacs.bak ]
    then
	rm ~/.emacs.bak
    fi

    mv ~/.emacs ~/.emacs.bak
fi

ln -s ~/dotfiles/emacs/init.el ~/.emacs
