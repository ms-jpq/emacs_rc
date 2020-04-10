;;#################### ########### ####################
;;#################### Yaml Region ####################
;;#################### ########### ####################

(use-package yaml-mode
  :defer t
  :after (lsp-mode)
  :hook
  (yaml-mode . lsp)
  :mode (("\\.yml\\'" . yaml-mode)
         ("\\.yml\\'" . yaml-mode)))


;;#################### END ####################
(provide 'lang-yaml)
