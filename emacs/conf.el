(linum-mode 1)
(custom-set-variables '(linum-format " %4i |"))

(column-number-mode 1)
(line-number-mode 1)

(delete-selection-mode 1)

(setq backup-directory-alist
		      `((".*" . , "~/.backup/")))
	(setq auto-save-file-name-transforms
		      `((".*" , "~/.backup/" t)))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(subword-mode)

(setq-default tab-width 4)

(fset 'yes-or-no-p 'y-or-no-p)

(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "C-=") 'scroll-up-line)
(global-set-key (kbd "M-=") 'scroll-down-line)
(global-set-key (kbd "M-\\") 'goto-line)
(global-set-key (kbd "M-o") 'occur)
(global-set-key (kbd "C-S-o") 'open-line)

(use-package php-mode
      :ensure t
      :mode ("\\.php\\'" . php-mode)
      :config (use-package company-php))

(use-package web-mode
      :ensure t
      :mode (("\\.html\\'" . web-mode)
		 ("\\.html.twig\\'" . web-mode)
		 ("\\.css\\'" . web-mode))
      :config (use-package company-web))

(use-package js2-mode
      :ensure t
      :mode ("\\.js\\'" . js2-mode))

(use-package yaml-mode
      :ensure t
      :mode (("\\.yml\\'" . yaml-mode)
		 ("\\.yaml\\'" . yaml-mode)))

(setq org-log-done t)
(setq org-todo-keywords '((sequence "TODO" "ONGOING" "BLOCKED" "DONE")))
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)

(use-package sudo-edit
      :ensure t
      :bind
      ("C-s-s" . sudo-edit))

(use-package drag-stuff
      :ensure t
      :custom
      drag-stuff-except-modes '(org-mode)
      :config
      (drag-stuff-define-keys)
      (drag-stuff-global-mode 1))

(use-package change-inner
      :ensure t
      :bind
      (("C-c i" . change-inner)
      ("C-c o" . change-outer)))

(use-package rainbow-mode
      :ensure t)

(use-package flycheck
      :ensure t
      :hook (prog-mode . flycheck-mode))

(use-package company
      :ensure t
      :hook (prog-mode . company-mode)
      :bind ("C-;" . company-complete))

(use-package origami
      :ensure t
      :hook (prog-mode . origami-mode)
      :bind ("C-c t" . origami-toggle-mode))

(use-package rainbow-delimiters
      :ensure t
      :hook (prog-mode . rainbow-delimiters-mode))

(use-package solaire-mode
      :ensure t
      :config
      (solaire-global-mode +1)
      (solaire-mode-swap-bg)
      :hook ((minibuffer-setup . solaire-mode-in-minibuffer)
		 (after-revert . turn-on-solaire-mode)))

(use-package doom-modeline
      :ensure t
      :hook (after-init . doom-modeline-mode))

(use-package doom-themes
      :ensure t
      :config
      (load-theme 'doom-one t))

(use-package helm
      :ensure t
      :bind (("M-x" . helm-M-x)
		 ("C-x r b" . helm-filtered-bookmarks)
		 ("C-x C-f" . helm-find-files)
		 ("M-l" . helm-list-buffers))
      :config (helm-mode 1))

(use-package magit
      :ensure t)
