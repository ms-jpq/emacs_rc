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
  :custom
  (projectile-completion-system 'ivy)
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
  :bind (:map search-command-map
              ("C-p" . counsel-projectile-find-file))
  :hook ((projectile-mode .counsel-projectile-mode)))


;;#################### END ####################
(provide 'init-proj)
