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


;;#################### ############## ####################
;;#################### Buffers Region ####################
;;#################### ############## ####################

;; ibuffer sort by mode
(require 'ibuffer)
(setq ibuffer-default-sorting-mode 'major-mode)

;; ibuffer auto refresh
(add-hook
  'ibuffer-mode-hook
  (lambda ()
    (ibuffer-auto-mode t)))


;; bring up ibuffer
(bind-keys
  ("C-b" . ibuffer))


;;#################### END ####################
(provide 'init-wm)
