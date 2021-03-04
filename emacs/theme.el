; doom modeline
(use-package doom-modeline
	     :straight t
	     :hook (after-init . doom-modeline-mode))

; doom theme
(use-package doom-themes
	     :straight t
	     :config
	     (load-theme 'doom-one t))

(provide 'theme)
;;; theme.el ends here
