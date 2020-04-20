;; -*- lexical-binding: t -*-

;;#################### ####################### ####################
;;#################### Search / Replace Region ####################
;;#################### ####################### ####################

;; move around in buffer using search
(use-package swiper
  :defer
  :bind (:map search-command-map
              ("C-s"
               . (lambda ()
                   (interactive)
                   (let ((selection (current-selection)))
                     (when selection
                       (deactivate-mark))
                     (swiper selection))))))


;;#################### END ####################
(provide 'init-search)
