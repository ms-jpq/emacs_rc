;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :custom
  (treemacs-follow-after-init t)
  (treemacs-project-follow-cleanup t)
  (treemacs-missing-project-action 'remove)
  :bind (:map dir-command-map
              ("C-d" . treemacs)
              ("C-s" . treemacs-switch-workspace)
              ("C-n" . treemacs-create-workspace)
              ("C-a" . treemacs-add-project-to-workspace)
              ("C-r" . treemacs-rename-workspace)))


(use-package lsp-treemacs
  :after (lsp-mode treemacs)
  :commands (lsp-treemacs-errors-list))


(use-package treemacs-magit
  :after (treemacs magit))


;;#################### END ####################
(provide 'init-tree)
