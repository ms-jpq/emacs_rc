;;#################### ############## ####################
;;#################### Cursors Region ####################
;;#################### ############## ####################

;; multiple cursors
(use-package multiple-cursors
  :defer
  :bind (:map mc/keymap
              ("C-q" . mc/keyboard-quit)))


;; hotkeys for text selection
(use-package expand-region
  :defer
  :bind (("M-."
          . (lambda ()
              (interactive)
              (with-shift-region 'er/expand-region)))
         ("M-," . er/contract-region)))


;; goto last edited place
(use-package goto-chg
  :defer)


;; move selected text around
(use-package drag-stuff
  :defer
  :bind (("M-<up>" . drag-stuff-up)
         ("M-<down>" . drag-stuff-down))
  :config
  (drag-stuff-global-mode t))


;; algo
(use-package smartparens
  :defer)


;; lisps
(use-package paredit
  :defer)


;;#################### END ####################
(provide 'init-cursor)
