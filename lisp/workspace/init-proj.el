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
  (projectile-known-projects-file
   (expand-file-name "projectile-bookmarks.eld" user-var-path))
  :bind-keymap
  ("C-c C-p" . projectile-command-map)
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
