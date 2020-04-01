;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :ensure t
  :bind (("C-p" . treemacs)))


(use-package lsp-treemacs
  :ensure t
  :after (lsp-mode treemacs)
  :commands lsp-treemacs-errors-list)


(use-package treemacs-magit
  :ensure t
  :after (treemacs magit))


;;#################### END ####################
(provide 'init-tree)
