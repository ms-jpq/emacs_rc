;;#################### ########## ####################
;;#################### Git Region ####################
;;#################### ########## ####################

(use-package magit
  :ensure t
  :bind (("C-c C-m" . magit)
         :map magit-mode-map
              ("C-q" . magit-mode-bury-buffer))
  :config
  (global-auto-revert-mode t))


;;#################### END ####################
(provide 'init-git)
