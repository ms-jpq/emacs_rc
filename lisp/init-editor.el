;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

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
  :bind (("C-:" . helm-company))
  :config
  (define-key company-mode-map (kbd "C-:") 'helm-company)
  (define-key company-active-map (kbd "C-:") 'helm-company))


(use-package highlight-parentheses
  :ensure t
  :config
  (global-highlight-parentheses-mode t))


(use-package clean-aindent-mode
  :ensure t
  :bind (("RET" . newline-and-indent)))


;;#################### END ####################
(provide 'init-editor)
