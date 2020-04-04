;;#################### ############# ####################
;;#################### Search Region ####################
;;#################### ############# ####################

;; all search keys start with ctl-f
(bind-keys
  :prefix-map search-command-map
  :prefix "C-f")


;;#################### ################## ####################
;;#################### File Search Region ####################
;;#################### ################## ####################

(bind-keys
  :map search-command-map
  ("C-r" . counsel-rg)
  ("C-g" . counsel-git))


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
