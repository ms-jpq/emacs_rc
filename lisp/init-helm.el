;;#################### ########### ####################
;;#################### Help Region ####################
;;#################### ########### ####################

;; better help
(use-package helpful
  :ensure t
  :bind
  ("C-h f" . helpful-callable)
  ("C-h v" . helpful-variable)
  ("C-h k" . helpful-key)
  ("C-c C-d" . helpful-at-point)
  ("C-h F" . helpful-function)
  ("C-h C" . helpful-command))


;;#################### ########### ####################
;;#################### Helm Region ####################
;;#################### ########### ####################

(use-package helm
  :ensure t
  :bind (("C-@" . helm-M-x)
         ("C-p" . helm-buffers-list)
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
  :init
  (global-unset-key (kbd "M-x"))
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
