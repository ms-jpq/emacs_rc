;;#################### ########### ####################
;;#################### Undo Region ####################
;;#################### ########### ####################

(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode)
  (defalias 'undo 'undo-tree-undo)
  (defalias 'redo 'undo-tree-redo)
  (global-set-key (kbd "C-z") 'undo)
  (global-set-key (kbd "C-y") 'redo))


;;#################### END ####################
(provide 'init-undo)
