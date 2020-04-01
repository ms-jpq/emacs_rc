;;#################### ############## ####################
;;#################### Project Region ####################
;;#################### ############## ####################

(use-package projectile
  :ensure t
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :config
  (projectile-mode t))


(use-package treemacs-projectile
  :ensure t
  :after (treemacs projectile))


(use-package helm-projectile
  :ensure t
  :after (helm projectile)
  :config
  (helm-projectile-on))


;;#################### END ####################
(provide 'init-proj)
