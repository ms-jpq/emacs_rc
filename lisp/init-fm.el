;;#################### ################### ####################
;;#################### File Manager Region ####################
;;#################### ################### ####################

;; helper func for dired
(use-package dired-hacks-utils
  :ensure t)


;; search w/ predicates
(use-package dired-narrow
  :ensure t)


;; coloured coded files
(use-package dired-rainbow
  :ensure t)


;; better tree structure
(use-package dired-subtree
  :ensure t)


;; collapse single nexted folders
(use-package dired-collapse
  :ensure t)


;; use dired as sidebar
(use-package dired-sidebar
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :bind (("C-c d" . dired-sidebar-toggle-sidebar)))


;;#################### END ####################
(provide 'init-fm)
