; Edit current file with sudo
(use-package sudo-edit
	     :straight t
	     :bind
	     ("C-s-s" . sudo-edit))

; Rainbow delimiters
(use-package rainbow-delimiters
	     :straight t
	     :hook (prog-mode . rainbow-delimiters-mode))

(provide 'misc)
;;; misc.el ends here
