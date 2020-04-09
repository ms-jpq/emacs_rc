;;#################### #################### ####################
;;#################### Primary Panes Region ####################
;;#################### #################### ####################

;; move cursor around panes with ctl left right
(windmove-default-keybindings 'control)


;; pane layouts
(bind-keys
    ("C-w" . delete-window)
    ("M-=" . split-window-right)
    ("M--" . split-window-below)
    ("M-p" . delete-window)
    ("M-o" . delete-other-windows))


;; move buffers around
(use-package buffer-move
  :bind (("C-c <left>" . buf-move-left)
         ("C-c <right>" . buf-move-right)
         ("C-c <up>" . buf-move-up)
         ("C-c <down>" . buf-move-down)))


;; create scratch buffer
(use-package scratch
  :bind (("C-n" . scratch)))


;;#################### ###################### ####################
;;#################### Secondary Panes Region ####################
;;#################### ###################### ####################

;; make popup panes easier to dismiss
(use-package popwin
  :config
  (popwin-mode t))


;; make imenu a side pane
(use-package imenu-list
  :bind (("C-u" . imenu-list-smart-toggle))
  :custom
  (imenu-list-auto-resize nil))
;; restore tab key
(bind-keys
  ("TAB" . indent-for-tab-command))


;;#################### ################### ####################
;;#################### Tiling Panes Region ####################
;;#################### ################### ####################

;; tiling pane manager
(use-package zoom
  :custom
  (zoom-size (lambda ()
    '(0.618 . 0.618)))
  :config
  (zoom-mode t))


;;#################### END ####################
(provide 'init-wm)
