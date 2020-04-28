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
  :init
  (schedule-idle-background-task nil 0 'global-whitespace-cleanup-mode))


;; delete consecutive white spaces
(use-package hungry-delete
  :demand
  :config
  (global-hungry-delete-mode t))


;;#################### ################## ####################
;;#################### Indentation Region ####################
;;#################### ################## ####################

;; ident <-> unindent
(use-package stupid-indent-mode
  :defer
  :custom
  (stupid-indent-level 2)
  :bind (("M-<" . stupid-outdent)
         ("M->" . stupid-indent)))


;; indent not just current line, but the context
(use-package aggressive-indent
  :demand
  :config
  (global-aggressive-indent-mode t))


;;#################### END ####################
(provide 'init-whitespace)
