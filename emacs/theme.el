;;; Package -- theme

;;; Commentary:
;;; This package configures themes

;;; Code:

										;doom modeline
(use-package doom-modeline
	     :straight t
	     :hook (after-init . doom-modeline-mode)
		 :config
		 (setq inhibit-compacting-font-caches t)
		 (setq doom-modeline-height 25)
		 (setq doom-modeline-env-version t)
		 (setq doom-modeline-minor-modes t)
		 (set-face-attribute 'mode-line nil :family "Monoid" :height 100)
		 (set-face-attribute 'mode-line-inactive nil :family "Monoid" :height 100))

										; doom theme
(use-package doom-themes
	     :straight t
	     :config
	     (load-theme 'doom-one t))

(provide 'theme)
;;; theme.el ends here
