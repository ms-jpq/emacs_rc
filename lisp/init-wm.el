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
(run-at-time "10 sec" (* 1 60) 'clean-buffer-list)


;;#################### ############## ####################
;;#################### Windows Region ####################
;;#################### ############## ####################

;; move cursor around windows with ctl left right
(windmove-default-keybindings 'control)


;; window management hydra
(defhydra hy-window-man (global-map "C-]")
  ("w" delete-window)
  ("k" kill-current-buffer)
  ("-" previous-buffer)
  ("=" next-buffer)
  ("]" split-window-right)
  ("[" split-window-below)
  ("<up>" windmove-up)
  ("<down>" windmove-down)
  ("<left>" windmove-left)
  ("<right>" windmove-right))


;; allow C-c w <num> to selec window
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
  :bind (("C-i" . imenu-list-smart-toggle))
  :custom
  (imenu-list-auto-resize nil))
;; restore tab key
(bind-keys
  ("TAB" . indent-for-tab-command))


;;#################### END ####################
(provide 'init-wm)
