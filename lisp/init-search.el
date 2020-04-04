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

;; git
(bind-key "C-g" 'counsel-git search-command-map)


;;#################### #################### ####################
;;#################### Editor Search Region ####################
;;#################### #################### ####################

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper-isearch)
         :map search-command-map
              ("C-s" . swiper)))


;;#################### END ####################
(provide 'init-search)
