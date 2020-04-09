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


;;#################### END ####################
(provide 'init-whitespace)
