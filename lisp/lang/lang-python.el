;;#################### ############# ####################
;;#################### Python Region ####################
;;#################### ############# ####################

;; better python server
(use-package lsp-python-ms
  :defer
  :init
  (setq python-mode-map (make-sparse-keymap)))


;;#################### END ####################
(provide 'lang-python)
