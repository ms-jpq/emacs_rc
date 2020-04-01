;;#################### ########### ####################
;;#################### Undo Region ####################
;;#################### ########### ####################

;; normalize emac's undo - redo
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode)
  (defalias 'undo 'undo-tree-undo)
  (defalias 'redo 'undo-tree-redo)
  (bind-key "C-z" 'undo)
  (bind-key "C-y" 'redo))


;;#################### END ####################
(provide 'init-undo)
