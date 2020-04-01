;;#################### ############## ####################
;;#################### Buffers Region ####################
;;#################### ############## ####################

;; allow restore windows, C-c <-, C-c ->
(winner-mode t)


;; allow num key to selc window
(use-package ace-window
  :ensure t
  :config
  (define-key global-map [remap other-window] 'ace-window))


(use-package tabbar
  :ensure t
  :config
  (tabbar-mode t))


;;#################### END ####################
(provide 'init-wm)
