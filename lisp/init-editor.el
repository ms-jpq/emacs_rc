;;#################### ########## ####################
;;#################### LSP Region ####################
;;#################### ########## ####################

;; TODO: check https://github.com/emacs-lsp/lsp-mode for updates
(use-package lsp-mode
  :ensure t
  :commands (lsp)
  :hook ((prog-mode . lsp)
        (lsp-mode . lsp-enable-which-key-integration)))


;; TODO: check https://github.com/emacs-lsp/lsp-ui for updates
(use-package lsp-ui
  :ensure t
  :after (lsp-mode)
  :commands (lsp-ui-mode)
  :bind (:map lsp-ui-mode-map
              ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
              ([remap xref-find-references] . lsp-ui-peek-find-references))
  :custom
  ;; lsp-ui-sideline
  (lsp-ui-sideline-show-code-actions t)
  (lsp-ui-sideline-delay 0)
  ;; lsp-ui-peek
  (lsp-ui-peek-enable t)
  (lsp-ui-peek-show-directory t)
  ;; lsp-ui-doc
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-position 'bottom)
  (lsp-ui-doc-delay 0)
  ;; lsp-ui-imenu
  )


(use-package helm-lsp
  :ensure t
  :after (helm lsp-mode)
  :commands (helm-lsp-workspace-symbol))


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
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0)
  :hook ((after-init . global-company-mode)))


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
  :custom
  (company-lsp-async t)
  :config
  (push 'company-lsp company-backends))


;; helm search auto complete
(use-package helm-company
  :ensure t
  :after (helm company)
  :bind (:map company-active-map
              ("C-u" . helm-company)))


;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

;; highlight lines changed
(use-package diff-hl
  :ensure t
  :hook ((magit-post-refresh . diff-hl-magit-post-refresh)
         (prog-mode . diff-hl-flydiff-mode)
         (prog-mode . diff-hl-margin-mode)
         (dired-mode . diff-hl-dir-mode))
  :config
  (global-diff-hl-mode))


(use-package highlight-parentheses
  :ensure t
  :config
  (global-highlight-parentheses-mode t))


;; highlight events
(use-package volatile-highlights
  :ensure t
  :after (undo-tree)
  :config
  (volatile-highlights-mode t))


;; (use-package indent-guide
;;   :ensure t
;;   :custom
;;   (indent-guide-delay 0.1)
;;   (indent-guide-char "|")
;;   :config
;;   (indent-guide-global-mode))


;; highlight todos
(use-package hl-todo
  :ensure t
  :config
  (global-hl-todo-mode t))


;;#################### ################# ####################
;;#################### Whitespace Region ####################
;;#################### ################# ####################

;; trim trailing white spaces
(use-package ws-butler
  :ensure t
  :config
  (ws-butler-mode))


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; create scratch buffer
(use-package scratch
  :ensure t
  :bind (("C-c C-s" . scratch)))


;;#################### END ####################
(provide 'init-editor)
