;;#################### ########### ####################
;;#################### Yaml Region ####################
;;#################### ########### ####################

(use-package yaml-mode
  :after (lsp-mode)
  :hook ((yaml-mode . lsp))
  :init
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode)))


;;#################### END ####################
(provide 'lang-yaml)
