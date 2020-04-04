;;#################### ############# ####################
;;#################### Search Region ####################
;;#################### ############# ####################

;; all search keys start with ctl-f
(define-prefix-command 'search-command-map)
(bind-key "C-f" 'search-command-map)


;;#################### ################## ####################
;;#################### File Search Region ####################
;;#################### ################## ####################

;; rg
(bind-key "C-r" 'counsel-rg search-command-map)

;; fzf
(bind-key "C-f" 'counsel-fzf search-command-map)



;;#################### #################### ####################
;;#################### Editor Search Region ####################
;;#################### #################### ####################

(use-package swiper
  :ensure t
  :bind (:map search-command-map
              ("C-s" . swiper)))


;;#################### END ####################
(provide 'init-search)
