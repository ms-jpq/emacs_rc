;;#################### ########## ####################
;;#################### Ivy Region ####################
;;#################### ########## ####################

;; search agent
(use-package ivy
  :ensure t
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-wrap t)
  :config
  (ivy-mode 1))


;; replace default searches
(use-package counsel
  :ensure t
  :after (ivy helpful)
  :custom
  (counsel-describe-function-function 'helpful-callable)
  (counsel-describe-variable-function 'helpful-variable)
  :bind (("C-p" . counsel-M-x)
         ("C-o" . ivy-switch-buffer)
         ([remap describe-function] . counsel-describe-function)
         ([remap describe-variable] . counsel-describe-variable)
         ([remap describe-bindings] . counsel-descbinds)
         ([remap execute-extended-command] . counsel-M-x)
         ([remap list-buffers] . ivy-switch-buffer)
         ([remap switch-to-buffer] . ivy-switch-buffer)
         ([remap find-file] . counsel-find-file)
         ([remap occur] . ivy-occur))
  :config
  (counsel-mode))


;;#################### END ####################
(provide 'init-ivy)
