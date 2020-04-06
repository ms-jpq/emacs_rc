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
  (ivy-height 15)
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
  :bind (("C-o" . counsel-fzf)
         :map search-command-map
              ("C-r" . counsel-rg)
              ("C-c" . counsel-recentf))
  :config
  (counsel-mode))


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
              ("C-f" . swiper)))


;;#################### END ####################
(provide 'init-ivy)
