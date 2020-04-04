;;#################### ########### ####################
;;#################### Json Region ####################
;;#################### ########### ####################

(define-derived-mode json-mode prog-mode "JSON"
  "Major mode for editing json."
  :group 'json
  nil)

(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

;;#################### END ####################
(provide 'lang-json)
