;;#################### ############## ####################
;;#################### Project Region ####################
;;#################### ############## ####################

;; enforce project style
(use-package editorconfig
  :config
  (editorconfig-mode t))


(use-package projectile
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
  :after (treemacs projectile))


(use-package counsel-projectile
  :demand t
  :after (counsel projectile)
  :bind (:map search-command-map
              ("C-p" . counsel-projectile-find-file))
  :hook ((projectile-mode . counsel-projectile-mode)))


;;#################### END ####################
(provide 'init-proj)
