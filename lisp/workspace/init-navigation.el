;;#################### ########## ####################
;;#################### Ivy Region ####################
;;#################### ########## ####################

;; search agent
(use-package ivy
  :demand t
  :custom
  (ivy-use-virtual-buffers t)
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
  :config
  (ivy-mode t))


;; replace default searches
(use-package counsel
  :demand t
  :after (ivy helpful)
  :custom
  (counsel-descbinds-function . 'helpful-key)
  (counsel-describe-function-function . 'helpful-function)
  :init
  (bind-keys
    :prefix-map counsel-command-map
    :prefix "C-l")
  :bind (("C-p" . counsel-M-x)
         :map search-command-map
           ("C-c" . counsel-recentf)
           ("C-f" . counsel-fzf)
           ("C-r" . counsel-rg)
           ("C-g" . counsel-git)
         :map counsel-command-map
           ("C-d" . counsel-find-file)
           ("C-o" . counsel-minor)
           ("C-p" . counsel-major))
  :config
  (counsel-mode))


;; sorting backend for company, ivy. etc
(use-package prescient
  :custom
  (prescient-history-length 10 "hist items displayed")
  :config
  (prescient-persist-mode))


(use-package ivy-prescient
  :after (prescient ivy counsel)
  :config
  (ivy-prescient-mode))


;; prettier ivy
(use-package ivy-rich
  :after (ivy counsel)
  :config
  (setcdr (assq t ivy-format-functions-alist) 'ivy-format-function-line)
  (ivy-rich-mode t))


;; use ivy in xref TODO: remove emacs <27
(use-package ivy-xref
  :after (ivy)
  :init
  (setq xref-show-xrefs-function 'ivy-xref-show-xrefs)
  ;; xref initialization is different in Emacs 27 - there are two different
  ;; variables which can be set rather than just one
  (when (>= emacs-major-version 27)
    (setq xref-show-definitions-function 'ivy-xref-show-defs)))


;;#################### END ####################
(provide 'init-navigation)
