;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

(use-package highlight-parentheses
  :ensure t
  :config
  (global-highlight-parentheses-mode t))

(use-package clean-aindent-mode
  :ensure t
  :bind (("RET" . newline-and-indent)))


;;#################### END ####################
(provide 'init-editor)
