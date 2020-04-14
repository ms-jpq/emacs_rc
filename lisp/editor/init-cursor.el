;; -*- lexical-binding: t -*-

;;#################### ############## ####################
;;#################### Cursors Region ####################
;;#################### ############## ####################

;; multiple cursors
(use-package multiple-cursors
  :defer
  :bind (("M-m" . set-rectangular-region-anchor)))


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
         ("M-<down>" . drag-stuff-down)))


;; algo
(use-package smartparens
  :defer
  :init
  (require 'smartparens-config))


;; lisps
(use-package paredit
  :defer)


;;#################### END ####################
(provide 'init-cursor)
