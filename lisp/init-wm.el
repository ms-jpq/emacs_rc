;;#################### ############## ####################
;;#################### Windows Region ####################
;;#################### ############## ####################

;; allow restore windows, C-c <-, C-c ->
(winner-mode t)
(bind-key "C-c [" 'winner-undo)
(bind-key "C-c ]" 'winner-redo)


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


;; move panes around
(use-package buffer-move
  :ensure t
  :bind (("C-c <up>" . buf-move-up)
         ("C-c <down>" . buf-move-down)
         ("C-c <left>" . buf-move-left)
         ("C-c <right>" . buf-move-right)))


;;#################### ############## ####################
;;#################### Buffers Region ####################
;;#################### ############## ####################

;; bring up ibuffer
(bind-key "C-c u" 'ibuffer)


;;#################### END ####################
(provide 'init-wm)
