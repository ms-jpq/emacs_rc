;; -*- lexical-binding: t -*-

;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

;; show linenum only in certain modes
(progn
  (column-number-mode t)
  (add-hook 'prog-mode-hook 'display-line-numbers-mode)
  (add-hook 'conf-mode-hook 'display-line-numbers-mode)
  (add-hook 'text-mode-hook 'display-line-numbers-mode))


;; highlight todos
(use-package hl-todo
  :defer
  :hook
  (display-line-numbers-mode . hl-todo-mode))


(use-package highlight-parentheses
  :defer
  :hook
  (display-line-numbers-mode . highlight-parentheses-mode))


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
