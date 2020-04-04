;;#################### ########### ####################
;;#################### Helm Region ####################
;;#################### ########### ####################

(use-package helm
  :ensure t
  :demand t
  :config
  (helm-mode t))


(use-package helm-mode-manager
  :ensure t
  :after (helm)
  :bind ("C-l" . helm-switch-major-mode))


;;#################### END ####################
(provide 'init-helm)
