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
(run-at-time "1 sec" (* 1 60)
  (lambda ()
    (let ((msg (current-message))
          (prev inhibit-message))
      (setq inhibit-message t)
      (clean-buffer-list)
      (setq inhibit-message prev)
      (when msg (message msg)))))


;;#################### ############## ####################
;;#################### Windows Region ####################
;;#################### ############## ####################

;; move cursor around windows with ctl left right
(windmove-default-keybindings 'control)

;; close window
(bind-keys
  ("C-w" . delete-window))

;; window management hydra
(defhydra hy-window-man (global-map "C-]")
  ("k" kill-current-buffer)
  ("-" previous-buffer)
  ("=" next-buffer)
  ("]" split-window-right)
  ("[" split-window-below))


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
  :bind (("C-u" . imenu-list-smart-toggle))
  :custom
  (imenu-list-auto-resize nil))
;; restore tab key
(bind-keys
  ("TAB" . indent-for-tab-command))


;;#################### END ####################
(provide 'init-wm)
