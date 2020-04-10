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
  :config
  (projectile-mode t)
  (setq projectile-mode-map (make-sparse-keymap)))


(use-package treemacs-projectile
  :after (treemacs projectile))


(use-package counsel-projectile
  :after (counsel projectile)
  :bind (:map search-command-map
              ("C-p" . counsel-projectile-find-file)
         :map ops-command-mapa
              ("C-r" . counsel-projectile-switch-project))
  :hook
  (projectile-mode . counsel-projectile-mode))


;;#################### END ####################
(provide 'init-proj)
