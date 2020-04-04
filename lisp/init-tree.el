;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :ensure t
  :init
  (define-prefix-command 'treemacs-command-map)
  :bind (("C-t" . treemacs-command-map)
         :map treemacs-command-map
         ("C-t" . treemacs)
         ("C-s" . treemacs-switch-workspace)
         ("C-a" . treemacs-add-project-to-workspace)))


(use-package lsp-treemacs
  :ensure t
  :after (lsp-mode treemacs)
  :commands lsp-treemacs-errors-list)


(use-package treemacs-magit
  :ensure t
  :after (treemacs magit))


;;#################### END ####################
(provide 'init-tree)
