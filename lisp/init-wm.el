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

;; bring up ibuffer
(bind-key "C-c u" 'ibuffer)

;; ibuffer auto refresh
(add-hook
  'ibuffer-mode-hook
  (lambda ()
    (ibuffer-auto-mode t)))

;; (ibuffer-switch-to-saved-filter-groups "default")

;; organize ibuffer into groups
;; (setq ibuffer-saved-filter-groups
;;   '(("default"
;;     ("emacs" (or (name . "^\\*scratch\\*$")
;;                  (name . "^\\*Messages\\*$"))
;;     ("dired" (mode . dired-mode))
;;     ("shell" (or (mode . eshell-mode)
;;                  (mode . shell-mode)))
;;     ("magit" (mode . magit-mode))
;;     ("code" (mode . prog-mode))))))


;;#################### END ####################
(provide 'init-wm)
