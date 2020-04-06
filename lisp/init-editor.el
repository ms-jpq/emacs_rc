;;#################### ################## ####################
;;#################### Indentation Region ####################
;;#################### ################## ####################

(setq-default tab-width 2)
(setq-default c-basic-offset tab-width)


;;#################### ########## ####################
;;#################### LSP Region ####################
;;#################### ########## ####################

;; required for lsp, shows errors
(use-package flycheck
  :ensure t
  :custom
  (flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  :hook ((after-init . global-flycheck-mode)))


;; ;; popup for flycheck errors -- TODO: is this useful?
;; (use-package flycheck-pos-tip
;;   :ensure t
;;   :after (flycheck)
;;   :hook ((global-flycheck-mode . flycheck-pos-tip-mode)))


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
  (company-selection-wrap-around t)
  (company-minimum-prefix-length 1)
  (company-idle-delay 0 "company asks backend")
  (company-tooltip-idle-delay 0.5 "tooltip shows (frontend)")
  :bind (:map company-active-map
              ("C-q" . company-abort)
              ("TAB" . company-select-next-if-tooltip-visible-or-complete-selection))
  :config
  (global-company-mode))


;; rank suggestions by freq
(use-package company-prescient
  :ensure t
  :after (prescient company)
  :config
  (company-prescient-mode))


;; ;; TODO: this doesnt work
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


(use-package company-lsp
  :ensure t
  :after (company lsp-mode)
  :commands (company-lsp)
  :custom
  (company-lsp-async t)
  :config
  (push 'company-lsp company-backends))


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


;;#################### ############# ####################
;;#################### Parens Region ####################
;;#################### ############# ####################

(use-package smartparens
  :ensure t)


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; create scratch buffer
(use-package scratch
  :ensure t
  :bind (("C-c C-n" . scratch)))


;; multiple cursors
(use-package multiple-cursors
  :ensure t)


;;#################### END ####################
(provide 'init-editor)
