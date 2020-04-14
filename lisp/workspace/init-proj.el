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
  :defer
  :custom
  (projectile-completion-system 'ivy)
  :bind-keymap
  ("C-c C-p" . projectile-command-map)
  :config
  (setq projectile-mode-map (make-sparse-keymap)))


(use-package counsel-projectile
  :defer
  :after (ivy)
  :bind (:map search-command-map
              ("C-p" . counsel-projectile-find-file)
              :map ops-command-map
              ("C-r" . counsel-projectile-switch-project)))


;;#################### END ####################
(provide 'init-proj)
