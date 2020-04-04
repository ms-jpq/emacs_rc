;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :ensure t
  :init
  (define-prefix-command 'treemacs-command-map)
  :bind (("C-t" . treemacs-command-map)
         :map treemacs-command-map
         ("t" . treemacs)
         ("s" . treemacs-switch-workspace)))


(use-package lsp-treemacs
  :ensure t
  :after (lsp-mode treemacs)
  :commands lsp-treemacs-errors-list)


(use-package treemacs-magit
  :ensure t
  :after (treemacs magit))


;;#################### END ####################
(provide 'init-tree)
