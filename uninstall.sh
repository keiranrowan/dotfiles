#!/bin/bash

### Emacs ###

if [ -e ~/.emacs.bak ]
then
    rm ~/.emacs
    mv ~/.emacs.bak ~/.emacs
else
    rm ~/.emacs
    touch ~/.emacs
fi
