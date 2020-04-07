;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :ensure t
  :custom
  (treemacs-follow-after-init t)
  (treemacs-project-follow-cleanup t)
  (treemacs-missing-project-action 'remove)
  :bind (:prefix-map tree-command-map
         :prefix "C-d"
         ("C-d" . treemacs)
         ("C-s" . treemacs-switch-workspace)
         ("C-n" . treemacs-create-workspace)
         ("C-a" . treemacs-add-project-to-workspace)
         ("C-r" . treemacs-rename-workspace)))


(use-package lsp-treemacs
  :ensure t
  :after (lsp-mode treemacs)
  :commands (lsp-treemacs-errors-list))


(use-package treemacs-magit
  :ensure t
  :after (treemacs magit))


;;#################### END ####################
(provide 'init-tree)
