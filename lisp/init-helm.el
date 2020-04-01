;;#################### ########### ####################
;;#################### Helm Region ####################
;;#################### ########### ####################

(use-package helm
  :ensure t
  :bind (("C-@" . helm-M-x)
         ("C-c l" . helm-buffers-list))
  :config
  (helm-mode t)
  (define-key global-map [remap find-file] 'helm-find-files)
  (define-key global-map [remap occur] 'helm-occur)
  (define-key global-map [remap list-buffers] 'helm-buffers-list)
  (define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
  (define-key global-map [remap execute-extended-command] 'helm-M-x)
  (define-key global-map [remap apropos-command] 'helm-apropos)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point))


;; describe key-binds
(use-package helm-descbinds
  :ensure t
  :after (helm)
  :config
  (helm-descbinds-mode)
  (define-key global-map [remap describe-bindings] 'helm-descbinds))


(use-package helm-mode-manager
  :after (helm)
  :ensure t)


(use-package helm-themes
  :after (helm)
  :ensure t)


;;#################### END ####################
(provide 'init-helm)
