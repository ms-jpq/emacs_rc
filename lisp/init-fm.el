;;#################### ################### ####################
;;#################### File Manager Region ####################
;;#################### ################### ####################

;; use dired as sidebar
(use-package dired-sidebar
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :bind (("C-c d" . dired-sidebar-toggle-sidebar)))


;;#################### END ####################
(provide 'init-fm)
