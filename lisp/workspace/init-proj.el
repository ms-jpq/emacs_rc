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
  :bind (:map replace-command-map
              ("C-p" . projectile-replace)
              ("C-o" . projectile-replace-regexp))
  :config
  (setq projectile-mode-map (make-sparse-keymap)))


(use-package counsel-projectile
  :defer
  :bind (:map search-command-map
              ("C-p" . counsel-projectile-find-file)
              :map ops-command-map
              ("C-r" . counsel-projectile-switch-project)))


;;#################### END ####################
(provide 'init-proj)
