; Snippets
(use-package yasnippet
  :straight t
  :config (yas-global-mode 1))

(setq yas-snippet-dirs (append yas-snippet-dirs '("~/dotfiles/emacs/snippets")))

(use-package yasnippet-snippets
  :straight t)

(provide 'snippet)
;;; snippet.el ends here
