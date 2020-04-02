;;#################### ################ ####################
;;#################### Navigation Region ####################
;;#################### ################ ####################

;; quick navigation via search
(use-package helm-swoop
  :ensure t
  :after (helm)
  :bind (("M-i" . helm-swoop)
         ("M-I" . helm-swoop-back-to-last-point)
         ("C-c M-i" . helm-multi-swoop)
         ("C-x M-i" . helm-multi-swoop-all)
         :map isearch-mode-map
              ("M-i" . helm-swoop-from-isearch)
         :map helm-swoop-map
              ("M-i" . helm-multi-swoop-all-from-helm-swoop)
              ("M-m" . helm-multi-swoop-current-mode-from-helm-swoop)
              ("C-r" . helm-previous-line)
              ("C-s" . helm-next-line)
         :map helm-multi-swoop-map
              ("C-r" . helm-previous-line)
              ("C-s" . helm-next-line)))


;;#################### ########## ####################
;;#################### LSP Region ####################
;;#################### ########## ####################

;; required for lsp
(use-package flycheck
  :ensure t)


(use-package lsp-mode
  :ensure t
  :after (flycheck)
  :commands lsp
  :hook ((prog-mode . lsp)
        (lsp-mode . lsp-enable-which-key-integration)))


(use-package lsp-ui
  :ensure t
  :after (lsp-mode)
  :commands lsp-ui-mode)


(use-package helm-lsp
  :ensure t
  :after (helm lsp-mode)
  :commands helm-lsp-workspace-symbol)


;; debugger
(use-package dap-mode
  :ensure t)


;;#################### ################## ####################
;;#################### Suggestions Region ####################
;;#################### ################## ####################

;; auto suggestions
(use-package company
  :ensure t
  :commands global-company-mode
  :hook ((after-init . global-company-mode))
  :custom
  (company-minimum-prefix-length 3)
  (company-idle-delay 0.0))


;; TODO
(use-package company-quickhelp
  :ensure t
  :after (company)
  :bind (:map company-active-map
              ("C-c h" . company-quickhelp-manual-begin))
  :config
  (company-quickhelp-mode))


;; rank suggestions by freq
(use-package company-statistics
  :ensure t
  :after (company)
  :hook ((after-init . company-statistics-mode)))


(use-package company-lsp
  :ensure t
  :after (company lsp-mode)
  :commands (company-lsp)
  :config
  (push 'company-lsp company-backends))


;; helm search auto complete
(use-package helm-company
  :ensure t
  :after (helm company)
  :bind (("C-c c" . helm-company)))


;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

;; only works w/ GUI
(use-package solaire-mode
  :ensure t
  :config
  (solaire-global-mode t))


(use-package highlight-parentheses
  :ensure t
  :config
  (global-highlight-parentheses-mode t))


(use-package indent-guide
  :ensure t
  :custom
  (indent-guide-delay 0.1)
  (indent-guide-char "|")
  :config
  (indent-guide-global-mode))


;; highlight todos
(use-package hl-todo
  :ensure t
  :config
  (global-hl-todo-mode t))


;;#################### ################# ####################
;;#################### Whitespace Region ####################
;;#################### ################# ####################

;; trim trailing white spaces
(use-package clean-aindent-mode
  :ensure t
  :bind (("RET" . newline-and-indent)))


;; delete multi white spaces
(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode t))


;;#################### END ####################
(provide 'init-editor)
