; Disable package.el
(setq package-enable-at-startup nil)

; Path dotfiles location
(add-to-list 'load-path "~/dotfiles/emacs/")

; Adjust garbage collector threshold
(setq gc-cons-threshold 100000000)

; Increase data processing
(setq read-process-output-max (* 1024 1024))

; Load modules
(load "package")
(load "tweaks")
(load "theme")
(load "major-modes")
(load "lsp")
(load "completion")
(load "dashboard")
(load "version-control")
(load "movement")
(load "snippet")
(load "misc")

(provide 'init)
;;; init.el ends here
