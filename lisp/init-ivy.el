;;#################### ########## ####################
;;#################### Ivy Region ####################
;;#################### ########## ####################

;; search agent
(use-package ivy
  :ensure t
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-wrap t)
  (ivy-on-del-error-function nil)
  (ivy-height 15)
  :config
  (ivy-mode t))


;; prettier ivy
(use-package ivy-rich
  :ensure t
  :after (ivy)
  :config
  (setcdr (assq t ivy-format-functions-alist) 'ivy-format-function-line)
  (ivy-rich-mode t))


;; replace default searches
(use-package counsel
  :ensure t
  :after (ivy)
  :demand t
  :config
  (counsel-mode))
;; why they dont register in :bind ??
(bind-keys
  ("C-p" . counsel-M-x)
  ("C-o" . counsel-switch-buffer)
  ("C-d" . counsel-dired))


;;#################### END ####################
(provide 'init-ivy)
