;;#################### ########## ####################
;;#################### Git Region ####################
;;#################### ########## ####################

;; highlight lines changed
(use-package diff-hl
  :ensure t
  :hook ((magit-post-refresh . diff-hl-magit-post-refresh))
  :config
  (global-diff-hl-mode)
  (diff-hl-margin-mode)
  (diff-hl-flydiff-mode))


(use-package magit
  :ensure t)


;;#################### END ####################
(provide 'init-git)
