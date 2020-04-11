;;#################### #################### ####################
;;#################### Primary Panes Region ####################
;;#################### #################### ####################

;; move cursor around panes with ctl left right
(windmove-default-keybindings 'control)


;; pane layouts
(bind-keys
 ("C-w" . delete-window)
 ("M-w" . delete-other-windows)
 ("M-=" . split-window-right)
 ("M--" . split-window-below))


;; move buffers around
(use-package buffer-move
  :defer
  :bind (("C-c <left>" . buf-move-left)
         ("C-c <right>" . buf-move-right)
         ("C-c <up>" . buf-move-up)
         ("C-c <down>" . buf-move-down)))


;; create scratch buffer
(use-package scratch
  :defer
  :bind (("C-n" . scratch)))


;;#################### ###################### ####################
;;#################### Secondary Panes Region ####################
;;#################### ###################### ####################

;; make popup panes easier to dismiss
(use-package popwin
  :defer
  :bind (:map ops-command-map
              ("C-m" . popwin:messages))
  :hook
  (emacs-startup . popwin-mode))


;; make imenu a side pane
(use-package imenu-list
  :defer
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
  :defer
  :custom
  (zoom-size (lambda ()
               '(0.618 . 0.618)))
  :hook
  (emacs-startup . zoom-mode))


;;#################### END ####################
(provide 'init-wm)
