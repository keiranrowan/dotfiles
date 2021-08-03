;;; Package --- lsp

;;; Commentary:
;;; Configuration for the Language Server Protocol

;;; Code:

										;language server protocol core package
(use-package lsp-mode
	     :straight t
	     :custom
		 (lsp-prefer-flymake nil)
	     (lsp-html-validate-scripts nil)
	     :init
	     (setq lsp-keymap-prefix "C-c l")
	     :hook
	     ((go-mode . lsp) ; gopls
	      (web-mode . lsp) ; vscode-html-languageserver
	      (php-mode . lsp) ; felixfbecker/php-language-server
	      (python-mode . lsp) ; jedi-language-server
	      (js2-mode . lsp) ; theia-ide
	      (sql-mode . lsp)) ; sqltoolsservice
	     :bind
	     (:map lsp-mode-map ("C-c C-f" . lsp-format-buffer))
	     :commands lsp)

										; language server protocol user interface
(use-package lsp-ui
	     :straight t
	     :commands lsp-ui-mode)

										; language server protocol helm integration
(use-package helm-lsp
	     :straight t
	     :commands helm-lsp-workspace-symbol)

										; flycheck for error reporting
(use-package flycheck
	     :straight t
	     :init
	     (global-flycheck-mode))

										; mssql lsp extension
(use-package lsp-mode
	     :straight t
	     :hook (sql-mode . lsp))

										; debug adapter protocol
										; TODO: Expand this
(use-package dap-mode
	     :straight t
	     :bind
	     (:map dap-mode-map
		   (("<f12>" . dap-debug)
		    ("<f8>" . dap-continue)
		    ("<f9>" . dap-next)
		    ("M-<f11>" . dap-step-in)
		    ("C-M-<f11>" . dap-step-out)
		    ("<f7>" . dap-breakpoint-toggle))))

(provide 'lsp)
;;; lsp.el ends here
