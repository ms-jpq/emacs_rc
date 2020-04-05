;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :ensure t
  :bind (:map dir-command-map
         ("C-t" . treemacs)
         ("C-s" . treemacs-switch-workspace)
         ("C-n" . treemacs-create-workspace)
         ("C-a" . treemacs-add-project-to-workspace)
         ("C-r" . treemacs-rename-workspace))
  :config
  (treemacs-follow-mode))


(use-package lsp-treemacs
  :ensure t
  :after (lsp-mode treemacs)
  :commands (lsp-treemacs-errors-list))


(use-package treemacs-magit
  :ensure t
  :after (treemacs magit))


;;#################### END ####################
(provide 'init-tree)

