;;#################### ########## ####################
;;#################### LSP Region ####################
;;#################### ########## ####################

(use-package flycheck
  :ensure t)


(use-package company
  :ensure t
  :init (setq company-minimum-prefix-length 1
              company-idle-delay 0.0))


(use-package lsp-mode
  :ensure t
  :hook ((prog-mode-hook . lsp)
        (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)


(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)


(use-package company-lsp
  :ensure t
  :commands company-lsp)


(use-package dap-mode
  :ensure t)


;;#################### END ####################
(provide 'init-lsp)
