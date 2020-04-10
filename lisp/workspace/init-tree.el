;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :custom
  (treemacs-follow-after-init t)
  (treemacs-project-follow-cleanup t)
  (treemacs-missing-project-action 'remove)
  (treemacs-file-event-delay 1000)
  :bind (:map dir-command-map
              ("C-d" . treemacs)
              ("C-n" . treemacs-create-workspace)
              ("C-s" . treemacs-switch-workspace)
              ("C-i" . treemacs-remove-workspace)
              ("C-a" . treemacs-add-project-to-workspace)
              ("C-k" . treemacs-remove-project-from-workspace)
              ("C-r" . treemacs-rename-workspace))
  :config
  (treemacs-git-mode 'deferred)
  (treemacs-filewatch-mode t)
  (treemacs-fringe-indicator-mode t))


(use-package lsp-treemacs
  :after (lsp-mode treemacs)
  :commands (lsp-treemacs-errors-list))


(use-package treemacs-magit
  :after (treemacs magit))


;;#################### END ####################
(provide 'init-tree)
