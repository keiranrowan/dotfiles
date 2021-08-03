;;; Package --- movement

;;; Commentary:
;;; Movement based packages

;;; Code:

										; avy goto word
(use-package avy
  :straight t
  :bind (("C-x j" . avy-goto-word-1)))

										; perspective mode
(use-package persp-mode
  :straight t)

(provide 'movement)
;;; movement.el ends here
