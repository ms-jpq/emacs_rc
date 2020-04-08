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
  :bind (:map lsp-mode-map
              ("M-r" . lsp-rename)
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
  ;; lsp-ui-doc
  (lsp-ui-doc-enable nil "seems to only work under GUI")
  (lsp-ui-doc-position 'bottom)
  (lsp-ui-doc-delay 0))


(use-package lsp-ivy
  :after (ivy lsp-mode)
  :bind (:map lsp-mode-map
              ("M-x" . lsp-ivy-workspace-symbol)))


;; debugger
(use-package dap-mode)


;;#################### ################## ####################
;;#################### Suggestions Region ####################
;;#################### ################## ####################

;; auto suggestions
(use-package company
  :demand t
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
  :after (prescient company)
  :config
  (company-prescient-mode))


(use-package company-lsp
  :after (company lsp-mode)
  :commands (company-lsp)
  :custom
  (company-lsp-async t)
  :config
  (push 'company-lsp company-backends))


;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

(use-package highlight-parentheses
  :config
  (global-highlight-parentheses-mode t))


;; indent guide -- not enabled by default --
(use-package indent-guide
  :custom
  (indent-guide-delay 0.1)
  (indent-guide-char "|"))


;; highlight todos
(use-package hl-todo
  :config
  (global-hl-todo-mode t))


;;#################### ################# ####################
;;#################### Whitespace Region ####################
;;#################### ################# ####################

;; trim trailing white spaces
(use-package whitespace-cleanup-mode
  :config
  (global-whitespace-cleanup-mode))


;;#################### ############## ####################
;;#################### Cursors Region ####################
;;#################### ############## ####################

;; edit multi selection
(use-package iedit
  :bind (("C-r" . iedit-mode)))


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


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; create scratch buffer
(use-package scratch
  :bind (("C-c C-n" . scratch)))


;;#################### END ####################
(provide 'init-editor)
