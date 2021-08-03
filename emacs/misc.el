;;; Package --- misc

;;; Commentary:
;;; Assorted configurations

;;; Code:

										;Edit current file with sudo
(use-package sudo-edit
	     :straight t
	     :bind
	     ("C-s-s" . sudo-edit))

										; Rainbow delimiters
(use-package rainbow-delimiters
	     :straight t
	     :hook (prog-mode . rainbow-delimiters-mode))

(use-package minions
  :straight t
  :config (minions-mode 1))

(provide 'misc)
;;; misc.el ends here
