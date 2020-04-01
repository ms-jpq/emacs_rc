;;#################### ################ ####################
;;#################### Navigation Region ####################
;;#################### ################ ####################

(use-package helm-swoop
  :ensure t)


;;#################### ########## ####################
;;#################### LSP Region ####################
;;#################### ########## ####################

(use-package flycheck
  :ensure t)

(use-package lsp-mode
  :ensure t
  :commands lsp
  :hook ((prog-mode . lsp)
        (lsp-mode . lsp-enable-which-key-integration)))


(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)


(use-package helm-lsp
  :ensure t
  :commands helm-lsp-workspace-symbol)


(use-package dap-mode
  :ensure t)


(use-package company
  :ensure t
  :commands global-company-mode
  :hook ((after-init . global-company-mode))
  :init (setq company-minimum-prefix-length 3
              company-idle-delay 0.0))


(use-package company-lsp
  :ensure t
  :commands company-lsp
  :config
  (push 'company-lsp company-backends))


(use-package helm-company
  :ensure t
  :bind (("C-o" . helm-company)))


;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

(use-package highlight-parentheses
  :ensure t
  :config
  (global-highlight-parentheses-mode t))


;;#################### ################# ####################
;;#################### Whitespace Region ####################
;;#################### ################# ####################

(use-package clean-aindent-mode
  :ensure t
  :bind (("RET" . newline-and-indent)))


(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode t))


;;#################### END ####################
(provide 'init-editor)
