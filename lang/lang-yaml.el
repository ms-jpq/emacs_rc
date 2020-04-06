;;#################### ########### ####################
;;#################### Yaml Region ####################
;;#################### ########### ####################


(use-package yaml-mode
  :ensure t
  :after (lsp-mode)
  :hook ((yaml-mode . lsp)))

(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))


;;#################### END ####################
(provide 'lang-yaml)
