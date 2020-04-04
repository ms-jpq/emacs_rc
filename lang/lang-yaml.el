;;#################### ########### ####################
;;#################### Yaml Region ####################
;;#################### ########### ####################

(define-derived-mode yaml-mode prog-mode "Yaml"
  "Major mode for editing yaml."
  :group 'yaml
  nil)

(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

;;#################### END ####################
(provide 'lang-yaml)
