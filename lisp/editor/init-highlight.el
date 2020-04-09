;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

;; show linenum only in certain modes
((lambda ()
  (column-number-mode t)
  (add-hook 'prog-mode-hook 'display-line-numbers-mode)
  (add-hook 'text-mode-hook 'display-line-numbers-mode)
  (add-hook 'conf-mode-hook 'display-line-numbers-mode)))


;; highlight todos
(use-package hl-todo
  :config
  (global-hl-todo-mode t))


(use-package highlight-parentheses
  :config
  (global-highlight-parentheses-mode t))


(use-package rainbow-delimiters
  :hook ((emacs-lisp-mode . rainbow-delimiters-mode)))


;; indent guide -- not enabled by default --
(use-package indent-guide
  :custom
  (indent-guide-delay 0.1)
  (indent-guide-char "|"))


;;#################### END ####################
(provide 'init-highlight)
