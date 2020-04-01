;;#################### ############## ####################
;;#################### Windows Region ####################
;;#################### ############## ####################

;; allow restore windows, C-c <-, C-c ->
(winner-mode t)


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


;;#################### END ####################
(provide 'init-wm)
