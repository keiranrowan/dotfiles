;; Programming Languages

; major mode for php 
(use-package php-mode
	     :straight t
	     :mode "\\.hs\\'")

; major mode for golang
(use-package go-mode
	     :straight t
	     :mode "\\.go\\'")

; major mode for html, css, some js, and templates
(use-package web-mode
	     :straight t
	     :config
	     (web-mode-markup-indent-offset 4)
	     (web-mode-css-indent-offset 4)
	     (web-mode-code-indent-offset 4)
	     :mode
	     ("\\.html\\'"
	      "\\.css\\'"
	      "\\.html.twig\\'"
	      "\\.css.twig\\'"
	      "\\.js.twig\\'"
	      "\\.tmpl\\'"))

; major mode for javascript and typescript
(use-package js2-mode
	     :straight t
	     :mode "\\.js\\'")
	     
; major mode for python 
(use-package python-mode
	     :straight t
	     :config
	     (python-indent-offset 4)
	     :mode "\\.py\\'"
	     :interpreter "python")

; major mode for haskell
(use-package haskell-mode
	     :straight t
	     :mode "\\.hs\\'"
	     :config
	     (setq haskell-font-lock-symbols t))

;; org-mode

(use-package org-mode
	     :bind
	     (("C-c l" . org-store-link)
	      ("C-c a" . org-agenda))
	     :config
	     ((setq org-log-done t)
	      (setq org-todo-keywords '((sequence "TODO" "ONGOING" "BLOCKED" "DONE")))
	      (setq org-src-fontify-natively t)
	      (setq org-src-tab-acts-natively t)
	      (setq org-src-preserve-indentation t)
	      (setq org-agenda-files (list "~/orgs/agenda/")
		    (setq org-agenda-custom-commands
			  '(("c" "Simple agenda view"
			     ((agenda "")
			      (alltodo ""))))))))

;; Markup Languages

; major mode for json
(use-package json-mode
	     :straight t
	     :mode "\\.json\\'")

; major mode for yaml
(use-package yaml-mode
	     :straight t
	     :mode "\\.yaml\\'")

(use-package markdown-mode
	     :mode "\\.md\\'")

(provide 'major-modes)
;;; major-modes.el ends here
