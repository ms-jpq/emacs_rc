;;#################### ########## ####################
;;#################### LSP Region ####################
;;#################### ########## ####################

;; TODO: check https://github.com/emacs-lsp/lsp-mode for updates
(use-package lsp-mode
  :ensure t
  :commands (lsp)
  :hook ((prog-mode . lsp)
        (lsp-mode . lsp-enable-which-key-integration))
  :custom
  (lsp-keep-workspace-alive nil))


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
  ;; (lsp-ui-sideline-show-hover t)
  (lsp-ui-sideline-delay 0)
  ;; lsp-ui-doc
  (lsp-ui-doc-position 'bottom)
  (lsp-ui-doc-delay 0))


(use-package lsp-ivy
  :ensure t
  :after (ivy lsp-mode)
  :commands (lsp-ivy-workspace-symbol))


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
  (company-selection-wrap-around t)
  :config
  (global-company-mode))


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


;; TODO: this doesnt work
;; tool-tip pos lib
;; (use-package pos-tip
;;   :ensure t)
;; (use-package company-quickhelp
;;   :ensure t
;;   :after (pos-tip company)
;;   :bind (:map company-active-map
;;               ("C-c h" . company-quickhelp-manual-begin))
;;   :config
;;   (company-quickhelp-mode))


;; rank suggestions by freq
(use-package company-statistics
  :ensure t
  :after (company)
  :config
  (company-statistics-mode))


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


;; indent guide -- not enabled by default --
(use-package indent-guide
  :ensure t
  :custom
  (indent-guide-delay 0.1)
  (indent-guide-char "|"))


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
  :bind (("C-c C-n" . scratch)))


;;#################### END ####################
(provide 'init-editor)
