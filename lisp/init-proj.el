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
  :demand t
  :custom
  (projectile-completion-system 'ivy)
  :bind-keymap
  ("C-c C-p" . projectile-command-map)
  :bind (:map dir-command-map
              ("C-p" . projectile-switch-project))
  :config
  (projectile-mode t)
  (setq projectile-mode-map (make-sparse-keymap)))


(use-package treemacs-projectile
  :ensure t
  :after (treemacs projectile))


(use-package counsel-projectile
  :ensure t
  :demand t
  :after (counsel projectile)
  :bind (:map search-command-map
              ("C-p" . counsel-projectile-find-file))
  :hook ((projectile-mode . counsel-projectile-mode)))


;;#################### END ####################
(provide 'init-proj)
