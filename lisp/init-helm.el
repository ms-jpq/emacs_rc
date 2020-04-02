;;#################### ########### ####################
;;#################### Helm Region ####################
;;#################### ########### ####################

(use-package helm
  :ensure t
  :bind (("C-@" . helm-M-x)
         ("C-c l" . helm-buffers-list)
         ([remap find-file] . helm-find-files)
         ([remap occur] . helm-occur)
         ([remap list-buffers] . helm-buffers-list)
         ([remap dabbrev-expand] . helm-dabbrev)
         ([remap execute-extended-command] . helm-M-x)
         ([remap apropos-command] . helm-apropos)
         :map lisp-interaction-mode-map
              ([remap completion-at-point] . helm-lisp-completion-at-point)
         :map emacs-lisp-mode-map
              ([remap completion-at-point] . helm-lisp-completion-at-point))
  :config
  (helm-mode t))


;; describe key-binds
(use-package helm-descbinds
  :ensure t
  :after (helm)
  :bind (([remap describe-bindings] . helm-descbinds))
  :config
  (helm-descbinds-mode))


(use-package helm-mode-manager
  :after (helm)
  :ensure t)


(use-package helm-themes
  :after (helm)
  :ensure t)


;;#################### END ####################
(provide 'init-helm)
