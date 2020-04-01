;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :ensure t
  :config
  (setq treemacs-show-cursor t))

(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)

(use-package treemacs-magit
  :ensure t)


;;#################### END ####################
(provide 'init-tree)
