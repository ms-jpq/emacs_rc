;;#################### ################# ####################
;;#################### Whitespace Region ####################
;;#################### ################# ####################

;; default indent by 2
(setq-default tab-width 2)

;; require final new line
(setq-default require-final-newline t)

;; trim trailing white spaces
(use-package whitespace-cleanup-mode
  :config
  (global-whitespace-cleanup-mode))


;; delete consecutive white spaces
(use-package hungry-delete
  :config
  (global-hungry-delete-mode))


;;#################### ################## ####################
;;#################### Indentation Region ####################
;;#################### ################## ####################

;; ident <-> unindent
(use-package stupid-indent-mode
  :custom
  (stupid-indent-level 2)
  :bind (("M-;" . stupid-outdent)
         ("M-'" . stupid-indent)))


;;#################### END ####################
(provide 'init-whitespace)
