;;#################### ####################### ####################
;;#################### Search / Replace Region ####################
;;#################### ####################### ####################

;; improve search / replace
(use-package anzu
  :bind (([remap query-replace] . anzu-query-replace)
         ([remap query-replace-regexp] . anzu-query-replace-regexp)
         :map replace-command-map
         ("C-s" . anzu-query-replace)
         ("C-r" . anzu-query-replace-regexp)
         :map isearch-mode-map
         ([remap isearch-query-replace] . anzu-isearch-query-replace)
         ([remap isearch-query-replace-regexp] . anzu-isearch-query-replace-regexp))
  :config
  (global-anzu-mode t))


;; move around in buffer using search
(use-package swiper
  :after (ivy)
  :bind (:map search-command-map
              ("C-s" . swiper)))


;;#################### END ####################
(provide 'init-search)
