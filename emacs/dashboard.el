;;; Package --- dashboard

;;; Commentary:
;;; Landing page for Emacs

;;; Code:

										; Emacs landing page
(use-package dashboard
	     :straight t
	     :config
	     (dashboard-setup-startup-hook))

(provide 'dashboard)
;;; dashboard.el ends here
