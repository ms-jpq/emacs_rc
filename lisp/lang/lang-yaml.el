;; -*- lexical-binding: t -*-

;;#################### ########### ####################
;;#################### Yaml Region ####################
;;#################### ########### ####################

(use-package yaml-mode
  :defer
  :mode (("\\.yml\\'" . yaml-mode)
         ("\\.yaml\\'" . yaml-mode))
  :hook
  (yaml-mode . lsp-deferred))


;;#################### END ####################
(provide 'lang-yaml)
