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
  :bind (("M-."
          . (lambda ()
              (interactive)
              (with-shift-region 'er/expand-region)))
         ("M-," . er/contract-region)))


;; goto last edited place
(use-package goto-chg
  :defer t)


;; move selected text around
(use-package drag-stuff
  :bind (("M-<up>" . drag-stuff-up)
         ("M-<down>" . drag-stuff-down))
  :config
  (drag-stuff-global-mode t))


;; algo
(use-package smartparens
  :defer t)


;; lisps
(use-package paredit
  :defer t)


;;#################### END ####################
(provide 'init-cursor)
