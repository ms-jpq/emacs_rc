;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

(use-package highlight-parentheses
  :config
  (global-highlight-parentheses-mode t))


;; highlight todos
(use-package hl-todo
  :config
  (global-hl-todo-mode t))


;; indent guide -- not enabled by default --
(use-package indent-guide
  :custom
  (indent-guide-delay 0.1)
  (indent-guide-char "|"))


;;#################### END ####################
(provide 'init-highlight)
