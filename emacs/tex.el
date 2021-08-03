;;; Package --- tex

;;; Commentary:
;;; Better TeX support for Emacs

;;; Code:

										; AucTeX
(use-package tex
  :defer t
  :straight auctex
  :config (setq TeX-PDF-mode t))

(provide 'tex)
;;; tex.el ends here
