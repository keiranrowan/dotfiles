; Edit current file with sudo
(use-package sudo-edit
	     :straight t
	     :bind
	     ("C-s-s" . sudo-edit))

; Rainbow delimiters
(use-package rainbow-delimiters
	     :straight t
	     :hook (prog-mode . rainbow-delimiters-mode))

; Code Folding
(use-package origami
  :straight t
  :bind ("C-c o" . origami-toggle-node))
  

(provide 'misc)
;;; misc.el ends here
