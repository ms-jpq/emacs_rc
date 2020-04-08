;;#################### ############## ####################
;;#################### Cursors Region ####################
;;#################### ############## ####################

;; edit multi selection
(use-package iedit
  :bind (:map replace-command-map
              ("C-e" . iedit-mode)))


;; goto last edited place
(use-package goto-chg
  :bind (("M-," . goto-last-change)
         ("M-." . goto-last-change-reverse)))


;; algo
(use-package smartparens)

;; lisps
(use-package paredit)


;; multiple cursors
(use-package multiple-cursors)


;; hotkeys for text selection
(use-package expand-region)

;; move selected text around
(use-package drag-stuff)


;;#################### END ####################
(provide 'init-cursor)
