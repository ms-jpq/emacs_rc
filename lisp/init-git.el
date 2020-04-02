;;#################### ########## ####################
;;#################### Git Region ####################
;;#################### ########## ####################

;; highlight lines changed
(use-package diff-hl
  :ensure t
  :hook ((magit-post-refresh . diff-hl-magit-post-refresh)
         (prog-mode . diff-hl-margin-mode)
         (prog-mode . diff-hl-margin-mode))
  :config
  (global-diff-hl-mode))


(use-package magit
  :ensure t)


;;#################### END ####################
(provide 'init-git)
