;;; Package --- version-control

;;; Commentary:
;;; Version control utitilies via magit

;;; Code:

										;magit the godly git porcelain
(use-package magit
	     :straight t
	     :bind
	     ("C-c g" . magit-status))

(provide 'version-control)
;;; version-control.el ends here
