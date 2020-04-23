;; -*- lexical-binding: t -*-

;;#################### ########## ####################
;;#################### Lua Region ####################
;;#################### ########## ####################

(use-package lua-mode
  :defer)


(install-from-git
 "lsp-lua-emmy"
 "https://github.com/phenix3443/lsp-lua-emmy")
(use-package lsp-lua-emmy
  :load-path "packages/lsp-lua-emmy"
  :defer
  :custom
  (lsp-lua-emmy-jar-path
   (expand-file-name "EmmyLua-LS-all.jar" user-packages-path))
  :hook
  (lua-mode
   . (lambda () (require 'lsp-lua-emmy))))


;;#################### END ####################
(provide 'lang-lua)
