;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

;; highlight todos
(use-package hl-todo
  :defer
  :hook
  (emacs-startup . global-hl-todo-mode))


(use-package highlight-parentheses
  :defer
  :hook
  (emacs-startup . global-highlight-parentheses-mode))


(use-package rainbow-delimiters
  :defer
  :hook
  (emacs-lisp-mode . rainbow-delimiters-mode))


;; indent guide -- not enabled by default --
(use-package indent-guide
  :defer
  :custom
  (indent-guide-delay 0.1)
  (indent-guide-char "|"))


;;#################### ############ ####################
;;#################### Focus Region ####################
;;#################### ############ ####################

;; dim regions of text not under edit
(use-package focus
  :defer)

;; TODO: when will this be on melpa?
;; (use-package lsp-focus
;;   :defer
;;   :after (lsp-mode focus)
;;   :hook
;;   (focus-mode lsp-focus-mode))


;;#################### END ####################
(provide 'init-highlight)
