;;#################### ########### ####################
;;#################### Yaml Region ####################
;;#################### ########### ####################

(use-package yaml-mode
  :defer
  :after (lsp-mode)
  :mode (("\\.yml\\'" . yaml-mode)
         ("\\.yml\\'" . yaml-mode))
  :hook
  (yaml-mode . lsp-deferred))


;;#################### END ####################
(provide 'lang-yaml)
