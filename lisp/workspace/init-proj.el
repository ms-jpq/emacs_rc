;; -*- lexical-binding: t -*-

;;#################### ############## ####################
;;#################### Project Region ####################
;;#################### ############## ####################

;; enforce project style
(use-package editorconfig
  :demand
  :config
  (editorconfig-mode t))


(use-package projectile
  :demand
  :custom
  (projectile-completion-system 'ivy)
  :bind-keymap
  ("C-c C-p" . projectile-command-map)
  :config
  (setq projectile-mode-map (make-sparse-keymap))
  (projectile-mode t))


(use-package treemacs-projectile
  :demand
  :after (treemacs projectile))


(use-package counsel-projectile
  :demand
  :after (counsel projectile)
  :bind (:map search-command-map
              ("C-p" . counsel-projectile-find-file)
              :map ops-command-map
              ("C-r" . counsel-projectile-switch-project))
  :config
  (counsel-projectile-mode t))


;;#################### END ####################
(provide 'init-proj)
