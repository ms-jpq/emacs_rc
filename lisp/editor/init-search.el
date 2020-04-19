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
                     (swiper selection))))
              :map swiper-map
              ("C-o" . swiper-query-replace)))


;; writable ivy occur buffer
(use-package wgrep
  :defer
  :custom
  (wgrep-auto-save-buffer t)
  :bind (:map ivy-occur-grep-mode-map
              ("w" . nil)
              ("C-o" . ivy-wgrep-change-to-wgrep-mode)
              :map wgrep-mode-map
              ("C-s" . wgrep-finish-edit)
              ("C-k" . wgrep-abort-changes)))


;;#################### END ####################
(provide 'init-search)
