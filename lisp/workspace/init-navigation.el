;; -*- lexical-binding: t -*-

;;#################### ########## ####################
;;#################### Ivy Region ####################
;;#################### ########## ####################

;; search agent
(use-package ivy
  :defer
  :custom
  (ivy-wrap t)
  (ivy-on-del-error-function nil)
  (ivy-height 20)
  (ivy-count-format "(%d/%d) ")
  :bind (:map ivy-minibuffer-map
              ("<mouse-4>" . ivy-previous-line)
              ("<mouse-5>" . ivy-next-line)
              ("TAB" . ivy-partial)
              ("RET" . ivy-alt-done)
              ("M-RET" . ivy-done)
              ("C-o" . ivy-occur)
              :map ivy-occur-mode-map
              ("SPC" . ivy-occur-press)
              :map ivy-occur-grep-mode-map
              ("SPC" . ivy-occur-press))
  :config
  (ivy-mode t))


;; replace default searches
(use-package counsel
  :defer
  :bind (("C-p" . counsel-M-x)
         :map search-command-map
         ("C-r"
          . (lambda ()
              (interactive)
              (let ((selection (current-selection)))
                (when selection
                  (deactivate-mark))
                (counsel-rg selection nil "--hidden"))))
         ("C-f" . counsel-fzf)
         :map ops-command-map
         ("C-o" . counsel-minor)
         ("C-p" . counsel-major))
  :config
  (counsel-mode t))


;; sorting backend for company, ivy. etc
(use-package prescient
  :defer
  :custom
  (prescient-history-length 5 "hist items displayed")
  :config
  (prescient-persist-mode t))


(use-package ivy-prescient
  :demand
  :custom
  (ivy-prescient-sort-commands
   '(:not counsel-recentf))
  :config
  (ivy-prescient-mode t))


;; prettier ivy
(use-package ivy-rich
  :demand
  :config
  (ivy-rich-mode t)
  (setcdr (assq t ivy-format-functions-alist) 'ivy-format-function-line))


;; use ivy in xref
(use-package ivy-xref
  :defer
  :bind (:map ops-command-map
              ("C-d" . xref-find-definitions)
              ("C-f" . xref-find-references))
  :init
  (setq xref-show-xrefs-function 'ivy-xref-show-xrefs)
  (setq xref-show-definitions-function 'ivy-xref-show-defs))


;;#################### END ####################
(provide 'init-navigation)
