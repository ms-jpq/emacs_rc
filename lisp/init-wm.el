;;#################### ############## ####################
;;#################### Buffers Region ####################
;;#################### ############## ####################

;; buffers are a leaky abstraction
;; simply clear out stale ones automatically

(require 'midnight)

;; special buffers have life time of <x> seconds
(setq clean-buffer-list-delay-special (* 10 60))

;; normal buffers have life time of <x> seconds (originally days)
(setq clean-buffer-list-delay-general (* 60 60 (/ 1 24 60 60)))

;; repetitively remove stale buffers every <x> seconds
(schedule-background-task 'clean-buffer-list (* 1 60))


;;#################### ############ ####################
;;#################### Panes Region ####################
;;#################### ############ ####################

;; move cursor around panes with ctl left right
(windmove-default-keybindings 'control)


;; manage pane
(bind-keys
  ("C-w" . delete-window)
  ("M-=" . split-window-right)
  ("M--" . split-window-below))


;; buffer management hydra
(bind-keys
  ("M-o" . previous-buffer)
  ("M-p" . next-buffer))


;; allow C-c w <num> to selec pane
(use-package winum
  :ensure t
  :custom
  (winum-auto-setup-mode-line nil)
  :config
  (winum-mode))


;; make popup panes easier to dismiss
(use-package popwin
  :ensure t
  :config
  (popwin-mode t))


;; make imenu a side pane
(use-package imenu-list
  :ensure t
  :bind (("C-u" . imenu-list-smart-toggle))
  :custom
  (imenu-list-auto-resize nil))
;; restore tab key
(bind-keys
  ("TAB" . indent-for-tab-command))


;; dimm background panes
(use-package dimmer
  :ensure t
  :custom
  (dimmer-adjustment-mode :both)
  (dimmer-watch-frame-focus-events nil "dont dim on leaving emacs")
  (dimmer-fraction 0.15)
  :after (which-key hydra)
  :config
  (dimmer-mode t)
  (dimmer-configure-which-key)
  (dimmer-configure-hydra))


;;#################### END ####################
(provide 'init-wm)
