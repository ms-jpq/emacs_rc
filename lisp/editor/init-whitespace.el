;; -*- lexical-binding: t -*-

;;#################### ################# ####################
;;#################### Whitespace Region ####################
;;#################### ################# ####################

;; default indent by 2
(setq-default tab-width 2)

;; require final new line
(setq-default require-final-newline t)

;; trim trailing white spaces
(use-package whitespace-cleanup-mode
  :defer
  :custom
  (whitespace-cleanup-mode-preserve-point t)
  :hook
  (emacs-startup . global-whitespace-cleanup-mode))


;; delete consecutive white spaces
(use-package hungry-delete
  :defer
  :hook
  (emaccs-startup . global-hungry-delete-mode))


;;#################### ################## ####################
;;#################### Indentation Region ####################
;;#################### ################## ####################

;; ident <-> unindent
(use-package stupid-indent-mode
  :defer
  :custom
  (stupid-indent-level 2)
  :bind (("M-;" . stupid-outdent)
         ("M-'" . stupid-indent)))


;; indent not just current line, but the context
(use-package aggressive-indent
  :defer
  :hook
  (emacs-startup . global-aggressive-indent-mode))


;;#################### END ####################
(provide 'init-whitespace)
