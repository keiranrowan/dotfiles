#!/bin/bash

DIALOG_CANCEL=1
DIALOG_ESC=255

exec 3>&1
selection=$(dialog \
				--backtitle "https://github.com/keiranrowan/dotfiles" \
				--title "Install Configuration Files" \
				--clear \
				--cancel-label "Exit" \
				--no-tags \
				--ok-label "Install" \
				--checklist "Please choose which programs to configure." 0 70 10 \
				1 "Emacs" off \
				2>&1 1>&3)
exit_status=$?
exec 3>&-
case $exit_status in
    $DIALOG_CANCEL)
		clear
		echo "Program terminated."
		exit
		;;
    $DIALOG_ESC)
		clear
		echo "Program aborted." >&2
		exit 1
		;;
esac
case $selection in
    0 )
		clear
		echo "Program terminated."
		;;
    1 )
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
		;;
esac



