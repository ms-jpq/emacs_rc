;;#################### ############## ####################
;;#################### Windows Region ####################
;;#################### ############## ####################

;; allow restore windows, C-c <-, C-c ->
(winner-mode t)
(bind-key "C-c [" 'winner-undo)
(bind-key "C-c ]" 'winner-redo)


;; allow num key to selc window
(use-package ace-window
  :ensure t
  :bind (([remap other-window] . ace-window)))


;; TODO - replace this @ emacs 27
(use-package tabbar
  :ensure t
  :config
  (tabbar-mode t))


;; make popup window easier to dismiss
(use-package popwin
  :ensure t
  :config
  (popwin-mode t))


;; move buffers around
(use-package buffer-move
  :ensure t
  :bind (("C-c <up>" . buf-move-up)
         ("C-c <down>" . buf-move-down)
         ("C-c <left>" . buf-move-left)
         ("C-c <right>" . buf-move-right)))


;;#################### END ####################
(provide 'init-wm)
