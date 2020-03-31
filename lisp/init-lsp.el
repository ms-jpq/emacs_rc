;;#################### ########## ####################
;;#################### LSP Region ####################
;;#################### ########## ####################

(use-package flycheck
  :ensure t)


(use-package company
  :ensure t
  :command global-company-mode
  :hook ((after-init . global-company-mode))
  :init (setq company-minimum-prefix-length 1
              company-idle-delay 0.0))


(use-package lsp-mode
  :ensure t
  :commands lsp
  :hook ((prog-mode . lsp)
        (lsp-mode . lsp-enable-which-key-integration)))


(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)


(use-package company-lsp
  :ensure t
  :commands company-lsp
  :config
  (push 'company-lsp company-backends))


(use-package dap-mode
  :ensure t)


;;#################### END ####################
(provide 'init-lsp)
