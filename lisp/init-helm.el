;;#################### ########### ####################
;;#################### Helm Region ####################
;;#################### ########### ####################

(use-package helm
  :ensure t
  :demand
  :bind (([remap dabbrev-expand] . helm-dabbrev)
         ([remap apropos-command] . helm-apropos)
         :map lisp-interaction-mode-map
              ([remap completion-at-point] . helm-lisp-completion-at-point)
         :map emacs-lisp-mode-map
              ([remap completion-at-point] . helm-lisp-completion-at-point))
  :config
  (helm-mode t))


(use-package helm-mode-manager
  :ensure t
  :after (helm)
  :bind ("C-l" . helm-switch-major-mode))


;;#################### END ####################
(provide 'init-helm)
