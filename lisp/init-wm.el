;;#################### ############## ####################
;;#################### Windows Region ####################
;;#################### ############## ####################

;; allow restore window panes
(winner-mode t)
(bind-key "C-c [" 'winner-undo)
(bind-key "C-c ]" 'winner-redo)

;; move cursor around windows with ctl left right
(windmove-default-keybindings 'control)


;; allow C-c w <num> to selec window
(use-package winum
  :ensure t
  :config
  (winum-mode))


;; TODO - replace this @ emacs 27
(use-package tabbar
  :ensure t
  :config
  (tabbar-mode t))


;; make popup panes easier to dismiss
(use-package popwin
  :ensure t
  :config
  (popwin-mode t))


;;#################### ############## ####################
;;#################### Buffers Region ####################
;;#################### ############## ####################

;; ibuffer sort by mode
(setq ibuffer-default-sorting-mode 'major-mode)

;; ibuffer auto refresh
(add-hook
  'ibuffer-mode-hook
  (lambda ()
    (ibuffer-auto-mode t)))


;; bring up ibuffer
(bind-key "C-c o" 'ibuffer)


;; bring up ibuffer sidebar
(use-package ibuffer-sidebar
  :ensure t
  :commands (ibuffer-sidebar-toggle-sidebar)
  :bind (("C-c p" . ibuffer-sidebar-toggle-sidebar)))


;;#################### END ####################
(provide 'init-wm)
