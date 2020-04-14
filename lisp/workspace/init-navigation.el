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
  :custom
  (counsel-rg-base-command
   "rg -M 120 --with-filename --no-heading --line-number --color never --hidden %s"
   "TODO: this string might need to be updated")
  :bind (("C-p" . counsel-M-x)
         :map search-command-map
         ("C-r" . counsel-rg)
         ("C-f" . counsel-fzf)
         :map ops-command-map
         ("C-o" . counsel-minor)
         ("C-p" . counsel-major)
         ("C-d" . counsel-find-file))
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
  :defer
  :custom
  (ivy-prescient-sort-commands
   '(:not counsel-recentf))
  :hook
  (counsel-mode . ivy-prescient-mode))


;; prettier ivy
(use-package ivy-rich
  :defer
  :hook
  (counsel-mode
   . (lambda ()
       (ivy-rich-mode t)))
  :config
  (setcdr (assq t ivy-format-functions-alist) 'ivy-format-function-line))


;; use ivy in xref
(use-package ivy-xref
  :defer
  :bind (("M-d" . xref-find-definitions)
         ("M-e" . xref-find-references))
  :init
  (setq xref-show-xrefs-function 'ivy-xref-show-xrefs)
  (setq xref-show-definitions-function 'ivy-xref-show-defs))


;;#################### END ####################
(provide 'init-navigation)
