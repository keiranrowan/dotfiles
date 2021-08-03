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
(load "font")
(load "tweaks")
(load "theme")
(load "major-modes")
(load "lsp")
(load "completion")
(load "dashboard")
(load "version-control")
(load "movement")
(load "snippet")
(load "tex")
(load "misc")

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#191919" "#FF5E5E" "#468800" "#E9FDAC" "#8CDAFF" "#C586C0" "#85DDFF" "#d4d4d4"])
 '(custom-safe-themes
   '("f302eb9c73ead648aecdc1236952b1ceb02a3e7fcd064073fb391c840ef84bca" "6c386d159853b0ee6695b45e64f598ed45bd67c47f671f69100817d7db64724d" "d7ee1fdb09a671a968b2a751746e5b3f5f26ac1fd475d95d094ee1e4ce446d58" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "1a52e224f2e09af1084db19333eb817c23bceab5e742bf93caacbfea5de6b4f6" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "6e14157d0c8857e81035e6c7131dc17e4115b3911c82a1fd32e528aec8e89eab" "22a514f7051c7eac7f07112a217772f704531b136f00e2ccfaa2e2a456558d39" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "b186688fbec5e00ee8683b9f2588523abdf2db40562839b2c5458fcfb322c8a4" "8d7b028e7b7843ae00498f68fad28f3c6258eda0650fe7e17bfb017d51d0e2a2" "b0e446b48d03c5053af28908168262c3e5335dcad3317215d9fdeb8bac5bacf9" "c2aeb1bd4aa80f1e4f95746bda040aafb78b1808de07d340007ba898efa484f5" "d47f868fd34613bd1fc11721fe055f26fd163426a299d45ce69bef1f109e1e71" "266ecb1511fa3513ed7992e6cd461756a895dcc5fef2d378f165fed1c894a78c" "e19ac4ef0f028f503b1ccafa7c337021834ce0d1a2bca03fcebc1ef635776bea" "0466adb5554ea3055d0353d363832446cd8be7b799c39839f387abb631ea0995" "1278c5f263cdb064b5c86ab7aa0a76552082cf0189acf6df17269219ba496053" "88f59acbeacefb4998f45126d4d8ae8b2184f2a48753db362a349fd55321c7e1" "6b1abd26f3e38be1823bd151a96117b288062c6cde5253823539c6926c3bb178" "0b3aee906629ac7c3bd994914bf252cf92f7a8b0baa6d94cb4dfacbd4068391d" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "a7b20039f50e839626f8d6aa96df62afebb56a5bbd1192f557cb2efb5fcfb662" default))
 '(delete-selection-mode nil)
 '(exwm-floating-border-color "#121212")
 '(fci-rule-color "#515151")
 '(highlight-tail-colors ((("#1d2416" "#1d2416") . 0) (("#232c30" "#202c30") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#171F24" "#FFFFFF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#171F24" "#468800"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#171F24" "#777778"))
 '(objed-cursor-color "#FF5E5E")
 '(pdf-view-midnight-colors (cons "#d4d4d4" "#191919"))
 '(rustic-ansi-faces
   ["#191919" "#FF5E5E" "#468800" "#E9FDAC" "#8CDAFF" "#C586C0" "#85DDFF" "#d4d4d4"])
 '(vc-annotate-background "#191919")
 '(vc-annotate-color-map
   (list
	(cons 20 "#468800")
	(cons 40 "#7caf39")
	(cons 60 "#b2d672")
	(cons 80 "#E9FDAC")
	(cons 100 "#efd98e")
	(cons 120 "#f5b671")
	(cons 140 "#FC9354")
	(cons 160 "#e98e78")
	(cons 180 "#d78a9c")
	(cons 200 "#C586C0")
	(cons 220 "#d8789f")
	(cons 240 "#eb6b7e")
	(cons 260 "#FF5E5E")
	(cons 280 "#dd6464")
	(cons 300 "#bb6a6b")
	(cons 320 "#997071")
	(cons 340 "#515151")
	(cons 360 "#515151")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
