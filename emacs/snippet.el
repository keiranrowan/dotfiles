;;; Package --- snippet

;;; Commentary:
;;; Snippet expansion via YASnippet

;;; Code:

										;Snippets
(use-package yasnippet
  :straight t
  :config (yas-global-mode 1))

										; Configure snippet directory
(setq yas-snippet-dirs (append yas-snippet-dirs '("~/dotfiles/emacs/snippets")))

										; Include default snippets
(use-package yasnippet-snippets
  :straight t)

(provide 'snippet)
;;; snippet.el ends here
