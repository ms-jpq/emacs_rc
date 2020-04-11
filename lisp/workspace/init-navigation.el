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
              ("TAB" . ivy-partial)
              ("RET" . ivy-alt-done)
              ("M-RET" . ivy-done)
              ("C-o" . ivy-occur)
              :map ivy-occur-mode-map
              ("SPC" . ivy-occur-press)
              :map ivy-occur-grep-mode-map
              ("SPC" . ivy-occur-press))
  :hook
  (emacs-startup . ivy-mode))


;; replace default searches
(use-package counsel
  :defer
  :after (ivy)
  :bind (("C-p" . counsel-M-x)
         :map search-command-map
         ("C-c" . counsel-recentf)
         ("C-r" . counsel-rg)
         ("C-g" . counsel-git)
         ("C-f" . counsel-fzf)
         :map ops-command-map
         ("C-o" . counsel-minor)
         ("C-p" . counsel-major)
         ("C-d" . counsel-find-file))
  :hook
  (ivy-mode . counsel-mode))


;; sorting backend for company, ivy. etc
(use-package prescient
  :custom
  (prescient-history-length 10 "hist items displayed")
  :config
  (prescient-persist-mode))


(use-package ivy-prescient
  :defer
  :after (prescient ivy counsel)
  :custom
  (ivy-prescient-sort-commands
   '(:not counsel-recentf))
  :hook
  (counsel-mode . ivy-prescient-mode))


;; prettier ivy
(use-package ivy-rich
  :defer
  :after (ivy counsel)
  :hook
  (counsel-mode . ivy-rich-mode)
  :config
  (setcdr (assq t ivy-format-functions-alist) 'ivy-format-function-line))


;; use ivy in xref TODO: remove emacs <27
(use-package ivy-xref
  :defer
  :after (ivy)
  :bind (("M-d" . xref-find-definitions)
         ("M-e" . xref-find-references))
  :init
  (setq xref-show-xrefs-function 'ivy-xref-show-xrefs)
  ;; xref initialization is different in Emacs 27 - there are two different
  ;; variables which can be set rather than just one
  (when (>= emacs-major-version 27)
    (setq xref-show-definitions-function 'ivy-xref-show-defs)))


;;#################### END ####################
(provide 'init-navigation)
