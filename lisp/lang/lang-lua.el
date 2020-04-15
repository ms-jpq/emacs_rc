;; -*- lexical-binding: t -*-

;;#################### ########## ####################
;;#################### Lua Region ####################
;;#################### ########## ####################

(use-package lua-mode
  :defer)


(use-package lsp-lua-emmy
  :load-path "packages/lsp-lua-emmy"
  :defer
  :init
  (setq lsp-lua-emmy-jar-path
        (expand-file-name "EmmyLua-LS-all.jar" user-packages-path))
  :hook
  (lua-mode
   . (lambda () (require 'lsp-lua-emmy))))


;;#################### END ####################
(provide 'lang-lua)
