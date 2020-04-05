;;#################### ############## ####################
;;#################### Project Region ####################
;;#################### ############## ####################

;; enforce prettier style
(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode t))


(use-package projectile
  :ensure t
  :bind (:map projectile-mode-map
              ("C-i" . projectile-command-map))
  :config
  (projectile-mode t))


(use-package treemacs-projectile
  :ensure t
  :after (treemacs projectile))


(use-package counsel-projectile
  :ensure t
  :after (counsel projectile)
  :hook ((projectile-mode .counsel-projectile-mode)))


;;#################### END ####################
(provide 'init-proj)
