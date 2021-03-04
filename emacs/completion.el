; Company auto completion
(use-package company
	     :straight t
	     :config
	     (global-company-mode 1)
		 :custom
		 (company-show-numbers t)
		 (company-tooltip-align-annotations t)
		 (company-require-match 'never)
		 (company-global-modes '(not shell-mode))
	     :hook
	     (prog-mode . company-mode))

(use-package company-lsp
	     :straight t
	     :config
	     (push 'company-lsp company-backends))

(use-package company-box
	     :straight t
	     :hook
	     (company-mode . company-box-mode))

					; Helm buffer completion
(use-package helm
	     :straight t
	     :bind (("M-x" . helm-M-x)
		    ("C-x C-f" . helm-find-files)
		    ("C-x r b" . helm-filtered-bookmarks)
		    ("M-l" . helm-list-buffers)
		    ("C-x b" . helm-mini)
		    ("C-c m" . helm-semantic-or-imenu)
		    ("C-c h" . helm-eshell-history))
	     :config
	     (helm-mode 1)
	     (setq helm-buffers-fuzzy-matching t)
	     (setq helm-recentf-fuzzy-match t))

(provide 'completion)
;;; completion.el ends here
