;;#################### ########## ####################
;;#################### Ivy Region ####################
;;#################### ########## ####################

;; search agent
(use-package ivy
  :ensure t
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-wrap t)
  :config
  (ivy-mode t))


;; replace default searches
(use-package counsel
  :ensure t
  :after (ivy helpful)
  :demand t
  :config
  (counsel-mode))

;; why they dont register in :bind ??
(bind-key "C-p" 'counsel-M-x)
(bind-key "C-o" 'ivy-switch-buffer)
(bind-key "C-d" 'counsel-dired)


;;#################### END ####################
(provide 'init-ivy)
