(defhydra hydra-flycheck
    (:pre (flycheck-list-errors)
     :post (quit-windows-on "*Flycheck errors*")
     :hint nil)
  "Errors"
  ("f" flycheck-error-list-set-filter "Filter")
  ("j" next-error "Next")
  ("k" previous-error "Previous")
  ("gg" first-error "First")
  ("G" (progn (goto-char (point-max)) (previous-error)) "Last")
  ("q" nil))

(global-set-key (kbd "C-c e") 'hydra-flycheck/body)

(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))

(defhydra hydra-dired (:hint nil :color pink)
  "
_+_ mkdir          _v_iew           _m_ark             _(_ details        _i_nsert-subdir    wdired
_C_opy             _O_ view other   _U_nmark all       _)_ omit-mode      _$_ hide-subdir    C-x C-q : edit
_D_elete           _o_pen other     _u_nmark           _l_ redisplay      _w_ kill-subdir    C-c C-c : commit
_R_ename           _M_ chmod        _t_oggle           _g_ revert buf     _e_ ediff          C-c ESC : abort
_Y_ rel symlink    _G_ chgrp        _E_xtension mark   _s_ort             _=_ pdiff
_S_ymlink          ^ ^              _F_ind marked      _._ toggle hydra   \\ flyspell
_r_sync            ^ ^              ^ ^                ^ ^                _?_ summary
_z_ compress-file  _A_ find regexp
_Z_ compress       _Q_ repl regexp

T - tag prefix
"
  ("\\" dired-do-ispell)
  ("(" dired-hide-details-mode)
  (")" dired-omit-mode)
  ("+" dired-create-directory)
  ("=" diredp-ediff)         ;; smart diff
  ("?" dired-summary)
  ("$" diredp-hide-subdir-nomove)
  ("A" dired-do-find-regexp)X
  ("C" dired-do-copy)        ;; Copy all marked files
  ("D" dired-do-delete)
  ("E" dired-mark-extension)
  ("e" dired-ediff-files)
  ("F" dired-do-find-marked-files)
  ("G" dired-do-chgrp)
  ("g" revert-buffer)        ;; read all directories again (refresh)
  ("i" dired-maybe-insert-subdir)
  ("l" dired-do-redisplay)   ;; relist the marked or singel directory
  ("M" dired-do-chmod)
  ("m" dired-mark)
  ("O" dired-display-file)
  ("o" dired-find-file-other-window)
  ("Q" dired-do-find-regexp-and-replace)
  ("R" dired-do-rename)
  ("r" dired-do-rsynch)
  ("S" dired-do-symlink)
  ("s" dired-sort-toggle-or-edit)
  ("t" dired-toggle-marks)
  ("U" dired-unmark-all-marks)
  ("u" dired-unmark)
  ("v" dired-view-file)      ;; q to exit, s to search, = gets line #
  ("w" dired-kill-subdir)
  ("Y" dired-do-relsymlink)
  ("z" diredp-compress-this-file)
  ("Z" dired-do-compress)
  ("q" nil)
  ("." nil :color blue))

(define-key dired-mode-map "." 'hydra-dired/body)

(defhydra hydra-lsp (:exit t :hint nil)
  "
 Buffer^^               Server^^                   Symbol
-------------------------------------------------------------------------------------
 [_f_] format           [_M-r_] restart            [_d_] declaration  [_i_] implementation  [_o_] documentation
 [_m_] imenu            [_S_]   shutdown           [_D_] definition   [_t_] type            [_r_] rename
 [_x_] execute action   [_M-s_] describe session   [_R_] references   [_s_] signature"
  ("d" lsp-find-declaration)
  ("D" lsp-ui-peek-find-definitions)
  ("R" lsp-ui-peek-find-references)
  ("i" lsp-ui-peek-find-implementation)
  ("t" lsp-find-type-definition)
  ("s" lsp-signature-help)
  ("o" lsp-describe-thing-at-point)
  ("r" lsp-rename)

  ("f" lsp-format-buffer)
  ("m" lsp-ui-imenu)
  ("x" lsp-execute-code-action)

  ("M-s" lsp-describe-session)
  ("M-r" lsp-restart-workspace)
  ("S" lsp-shutdown-workspace))

(global-set-key (kbd "C-c d") 'hydra-lsp/body)

(defhydra hydra-yasnippet (:color blue :hint nil)
  "
              ^YASnippets^
--------------------------------------------
  Modes:    Load/Visit:    Actions:

 _g_lobal  _d_irectory    _i_nsert
 _m_inor   _f_ile         _t_ryout
 _e_xtra   _l_ist         _n_ew
         _a_ll
"
  ("d" yas-load-directory)
  ("e" yas-activate-extra-mode)
  ("i" yas-insert-snippet)
  ("f" yas-visit-snippet-file :color blue)
  ("n" yas-new-snippet)
  ("t" yas-tryout-snippet)
  ("l" yas-describe-tables)
  ("g" yas/global-mode)
  ("m" yas/minor-mode)
  ("a" yas-reload-all))

(global-set-key (kbd "C-c y") 'hydra-yasnippet/body)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

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

(global-set-key (kbd "M-a") 'backward-paragraph)
(global-set-key (kbd "M-e") 'forward-paragraph)
(global-set-key (kbd "C-=") 'scroll-up-line)
(global-set-key (kbd "M-=") 'scroll-down-line)
(global-set-key (kbd "M-\\") 'goto-line)
(global-set-key (kbd "M-o") 'occur)
(global-set-key (kbd "C-S-o") 'open-line)

(global-set-key (kbd "C-c t") 'eshell)
(setenv "PATH"
    (concat
	 "/usr/local/bin:/usr/local/sbin:"
	 (getenv "PATH")))
(use-package eshell
  :init
  (setq
        eshell-scroll-to-bottom-on-input 'all
		eshell-error-if-no-glob t
		eshell-hist-ignoredups t
		eshell-save-history-on-exit t
		eshell-prefer-lisp-functions nil
		eshell-destory-buffer-when-process-dies t))

(setq-default c-basic-offset 4)

(setq haskell-font-lock-symbols t)

(use-package php-mode
      :ensure t
      :mode ("\\.php\\'" . php-mode))

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

(use-package phpunit
  :ensure t)

(use-package lsp-mode
   :ensure t
   :config
   (setq lsp-prefer-flymake nil)
   :hook 
   ((lsp-mode . lsp-headerline-breadcrumb-mode)
   (php-mode . lsp)
   (js2-mode . lsp)
   (web-mode . lsp)
   (sql-mode . lsp)
   (shell-script-mode . lsp))
   :commands lsp)

(use-package dap-mode
    :ensure t
	:config 
	(setq dap-auto-configure-features '(sessions locals controls tooltip)
	      dap-firefox-debug-program "~/.emacs.d/.extension/vscode/firefox-devtools.vscode-firefox-debug/extension/dist/adapter.bundle.js")
	(require 'dap-php)
	(require 'dap-gdb-lldb)
	(require 'dap-go)
	(require 'dap-firefox)
	:hook
	(prog-mode . dap-mode))

(use-package lsp-ui
 :ensure t
 :requires lsp-mode flycheck
 :config
 (setq lsp-ui-doc-enable t
       lsp-ui-doc-use-childframe t
	   lsp-ui-doc-position 'top
	   lsp-ui-doc-include-signature t
	   lsp-ui-sideline-enable nil
	   lsp-ui-flycheck-enable t
	   lsp-ui-flycheck-list-position 'right
	   lsp-ui-flycheck-live-reporting t
	   lsp-ui-peek-enable t
	   lsp-ui-peek-list-width 60
	   lsp-ui-peek-peek-height 25)
 :hook (lsp-mode . lsp-ui-mode))

(use-package company-lsp
 :ensure t
 :commands company-lsp)

(use-package dashboard
  :ensure t
      :config
      (dashboard-setup-startup-hook))

(use-package transient
	:ensure t)

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
      :bind (("M-x" . helm-M-x) ; M-x Fuzzy Replacement
		 ("C-x r b" . helm-filtered-bookmarks)
		 ("C-x C-f" . helm-find-files) ; Fuzzy Find File
		 ("M-l" . helm-list-buffers) ; Fuzzy Buffer Search
		 ("M-y" . helm-show-kill-ring) ; Fuzzy Undo
		 ("C-x b" . helm-mini) ; Fuzzy Buffer & Recent
		 ("C-c m" . helm-semantic-or-imenu) ; Fuzzy Function Search
		 ("C-c f" . helm-find) ; Fuzzy Find File on FS
		 ("C-s" . helm-occur) ; Fuzzy Search
		 ("C-c h" . helm-eshell-history) ;History for Eshell
		 )
      :config 
      (helm-mode 1)
      (setq helm-buffers-fuzzy-matching t)
      (setq helm-recentf-fuzzy-match t))

(use-package magit
      :ensure t
      :bind ("C-c g" . magit-status))

(use-package avy
  :ensure t
  :bind (("C-x j" . avy-goto-word-1)))

(use-package yasnippet
  :ensure t
  :config (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t)
