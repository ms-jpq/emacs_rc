;;#################### ########## ####################
;;#################### LSP Region ####################
;;#################### ########## ####################

;; required for lsp, shows errors
(use-package flycheck
  :defer
  :custom
  (flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  :bind (:map search-command-map
              ("C-e" . counsel-flycheck))
  :hook
  (emacs-startup . global-flycheck-mode))


;; show flycheck err in eldoc
(use-package flycheck-pos-tip
  :defer
  :hook
  (global-flycheck-mode . flycheck-pos-tip-mode))


;; TODO: check https://github.com/emacs-lsp/lsp-mode for updates
(use-package lsp-mode
  :defer
  :commands (lsp lsp-deferred)
  :bind (:map replace-command-map
              ("C-l" . lsp-rename)
              :map lsp-mode-map
              ("M-f" . lsp-describe-thing-at-point))
  :hook
  (prog-mode . lsp-deferred)
  (lsp-mode . lsp-diagnostics-modeline-mode)
  (lsp-mode . lsp-enable-which-key-integration))


(use-package lsp-ui
  :defer
  :commands (lsp-ui-mode)
  :after (lsp-mode)
  :bind (:map lsp-ui-mode-map
              ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
              ([remap xref-find-references] . lsp-ui-peek-find-references))
  :custom
  ;; lsp-ui-sideline
  ;; (lsp-ui-sideline-show-hover t)
  (lsp-ui-sideline-delay 0)
  (lsp-ui-doc-enable nil "only works under GUI"))


(use-package company-lsp
  :defer
  :after (lsp-mode company)
  :commands (company-lsp)
  :custom
  (company-lsp-async t)
  :config
  (push 'company-lsp company-backends))


(use-package lsp-ivy
  :defer
  :after (lsp-mode ivy)
  :commands (lsp-ivy-workspace-symbol)
  :bind (:map lsp-mode-map
              ("M-x" . lsp-ivy-workspace-symbol)))


;; TODO: this thing segfaults!
(use-package lsp-treemacs
  :defer
  :after (lsp-mode treemacs)
  :commands (lsp-treemacs-errors-list))


;; debugger
(use-package dap-mode
  :defer)


;;#################### END ####################
(provide 'init-lsp)
