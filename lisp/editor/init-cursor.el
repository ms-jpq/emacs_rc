;;#################### ############## ####################
;;#################### Cursors Region ####################
;;#################### ############## ####################

;; multiple cursors
(use-package multiple-cursors
  :defer)


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
  :hook
  (emacs-startup . drag-stuff-global-mode))


;; algo
(use-package smartparens
  :defer)


;; lisps
(use-package paredit
  :defer)


;;#################### END ####################
(provide 'init-cursor)
