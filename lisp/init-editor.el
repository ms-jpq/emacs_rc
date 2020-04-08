;;#################### ########## ####################
;;#################### LSP Region ####################
;;#################### ########## ####################

;; required for lsp, shows errors
(use-package flycheck
  :custom
  (flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  :config
  (global-flycheck-mode))


;; TODO: check https://github.com/emacs-lsp/lsp-mode for updates
(use-package lsp-mode
  :hook ((prog-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :bind (:map replace-command-map
              ("C-l" . lsp-rename)
         :map lsp-mode-map
              ("M-w" . lsp-describe-thing-at-point)))


(use-package lsp-ui
  :after (lsp-mode)
  :bind (("M-d" . xref-find-definitions)
         ("M-e" . xref-find-references)
         :map lsp-ui-mode-map
              ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
              ([remap xref-find-references] . lsp-ui-peek-find-references))
  :custom
  ;; lsp-ui-sideline
  ;; (lsp-ui-sideline-show-hover t)
  (lsp-ui-sideline-delay 0)
  (lsp-ui-doc-enable nil "only works under GUI"))


(use-package lsp-ivy
  :after (ivy lsp-mode)
  :bind (:map lsp-mode-map
              ("M-x" . lsp-ivy-workspace-symbol)))


;; debugger
(use-package dap-mode)


(use-package company-lsp
  :after (company lsp-mode)
  :commands (company-lsp)
  :custom
  (company-lsp-async t)
  :config
  (push 'company-lsp company-backends))



;;#################### ############## ####################
;;#################### Cursors Region ####################
;;#################### ############## ####################

;; edit multi selection
(use-package iedit
  :bind (:map replace-command-map
              ("C-e" . iedit-mode)))


;; goto last edited place
(use-package goto-chg
  :bind (("M-," . goto-last-change)
         ("M-." . goto-last-change-reverse)))


;; algo
(use-package smartparens)

;; lisps
(use-package paredit)


;; multiple cursors
(use-package multiple-cursors)


;; hotkeys for text selection
(use-package expand-region)

;; move selected text around
(use-package drag-stuff)


;;#################### END ####################
(provide 'init-editor)
