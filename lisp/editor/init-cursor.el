;;#################### ############## ####################
;;#################### Cursors Region ####################
;;#################### ############## ####################

;; multiple cursors
(use-package multiple-cursors
  :bind (("M-c" . mc/edit-lines)
          :map mc/keymap
          ("C-q" . mc/keyboard-quit)))


;; hotkeys for text selection
(use-package expand-region
  :bind (("M-." . er/expand-region)
         ("M-," . er/contract-region)))


;; goto last edited place
(use-package goto-chg)


;; move selected text around
(use-package drag-stuff
  :bind (("M-<up>" . drag-stuff-up)
         ("M-<down>" . drag-stuff-down))
  :config
  (drag-stuff-global-mode t))


;; algo
(use-package smartparens)


;; lisps
(use-package paredit)


;;#################### END ####################
(provide 'init-cursor)
