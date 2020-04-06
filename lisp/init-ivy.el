;;#################### ########## ####################
;;#################### Ivy Region ####################
;;#################### ########## ####################

;; search agent
(use-package ivy
  :ensure t
  :demand t
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-wrap t)
  (ivy-on-del-error-function nil)
  (ivy-height 20)
  (ivy-count-format "(%d/%d) ")
  :bind (:map ivy-minibuffer-map
              ("TAB" . ivy-partial)
              ("M-RET" . ivy-alt-done))
  :config
  (ivy-mode t))


;; replace default searches
(use-package counsel
  :ensure t
  :demand t
  :after (ivy)
  :init
  (bind-keys
    :prefix-map counsel-command-map
    :prefix "C-l")
  :bind (("C-p" . counsel-M-x)
         :map search-command-map
           ("C-c" . counsel-recentf)
           ("C-f" . counsel-fzf)
           ("C-r" . counsel-rg)
         :map counsel-command-map
           ("C-d" . counsel-cd)
           ("C-o" . counsel-minor)
           ("C-p" . counsel-major))
  :config
  (counsel-mode))


;; sorting backend for company, ivy. etc
(use-package prescient
  :ensure t
  :custom
  (prescient-history-length 10 "hist items displayed")
  :config
  (prescient-persist-mode))


(use-package ivy-prescient
  :ensure t
  :after (prescient ivy counsel)
  :config
  (ivy-prescient-mode))


;; prettier ivy
(use-package ivy-rich
  :ensure t
  :after (ivy counsel)
  :config
  (setcdr (assq t ivy-format-functions-alist) 'ivy-format-function-line)
  (ivy-rich-mode t))


;; search in buffer
(use-package swiper
  :ensure t
  :after (ivy)
  :bind (:map search-command-map
              ("C-s" . swiper)))


;;#################### END ####################
(provide 'init-ivy)
