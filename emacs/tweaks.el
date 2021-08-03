; Line numbers in prog-mode
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;Delete selected text on action
(delete-selection-mode 1)

; Consolidate backup files
(if (not (file-directory-p "~/.emacs.tmp"))
	(mkdir "~/.emacs.tmp"))
(setq backup-directory-alist
      `((".*" . , "~/.emacs.tmp/")))
(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.tmp/" t)))

; Remove UI clutter
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

; camelCase support
(subword-mode)

; Default tab width
(setq-default tab-width 4)

(provide 'tweaks)
;;; tweaks.el ends here
