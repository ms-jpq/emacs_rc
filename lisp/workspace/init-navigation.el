;; -*- lexical-binding: t -*-

;;#################### ########## ####################
;;#################### Ivy Region ####################
;;#################### ########## ####################

;; search agent
(use-package ivy
  :demand
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
  :demand
  :after (ivy)
  :bind (("C-p" . counsel-M-x)
         :map search-command-map
         ("C-r" . counsel-rg)
         ("C-g" . counsel-git)
         ("C-f" . counsel-fzf)
         :map ops-command-map
         ("C-o" . counsel-minor)
         ("C-p" . counsel-major)
         ("C-d" . counsel-find-file))
  :config
  (counsel-mode t))


;; sorting backend for company, ivy. etc
(use-package prescient
  :demand
  :custom
  (prescient-history-length 10 "hist items displayed")
  :config
  (prescient-persist-mode t))


(use-package ivy-prescient
  :demand
  :after (prescient ivy counsel)
  :custom
  (ivy-prescient-sort-commands
   '(:not counsel-recentf))
  :config
  (ivy-prescient-mode t))


;; prettier ivy
(use-package ivy-rich
  :demand
  :after (ivy counsel)
  :config
  (setcdr (assq t ivy-format-functions-alist) 'ivy-format-function-line)
  (ivy-rich-mode t))


;; use ivy in xref TODO: remove emacs <27
(use-package ivy-xref
  :defer
  :after (ivy)
  :bind (("M-d" . xref-find-definitions)
         ("M-e" . xref-find-references))
  :init
  (setq xref-show-xrefs-function 'ivy-xref-show-xrefs)
  (setq xref-show-definitions-function 'ivy-xref-show-defs))


;;#################### END ####################
(provide 'init-navigation)
