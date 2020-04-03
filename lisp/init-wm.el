;;#################### ############## ####################
;;#################### Windows Region ####################
;;#################### ############## ####################

;; quit emacs
(bind-key "C-q" 'save-buffers-kill-terminal)
;; quit window
(bind-key "C-w" 'delete-window)


;; move cursor around windows with ctl left right
(windmove-default-keybindings 'control)


;; resize window
(bind-key "C-c <up>" 'enlarge-window) ;; taller
(bind-key "C-c <down>" 'shrink-window) ;; shorter
(bind-key "C-c <right>" 'enlarge-window-horizontally) ;; wider
(bind-key "C-c <left>" 'shrink-window-horizontally) ;; narrower


;; split window
(bind-key "C-c ]" 'split-window-right)
(bind-key "C-c [" 'split-window-below)


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
(bind-key "C-c p" 'ibuffer)


;;#################### END ####################
(provide 'init-wm)
