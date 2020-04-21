;; -*- lexical-binding: t -*-

;;#################### ############# ####################
;;#################### Python Region ####################
;;#################### ############# ####################

;; better python server
(use-package lsp-python-ms
  :defer
  :custom
  (lsp-python-ms-dir
   (expand-file-name "lsp-python-ms" user-packages-path))
  :init
  (setq python-mode-map (make-sparse-keymap)))


;;#################### END ####################
(provide 'lang-python)
