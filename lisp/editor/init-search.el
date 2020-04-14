;; -*- lexical-binding: t -*-

;;#################### ####################### ####################
;;#################### Search / Replace Region ####################
;;#################### ####################### ####################


;; edit current select symbol selection
(use-package iedit
  :defer
  :bind (("M-r" . iedit-mode)))


;; improve search / replace
(use-package anzu
  :defer
  :custom
  (anzu-replace-to-string-separator " -> ")
  :bind (([remap query-replace] . anzu-query-replace)
         ([remap query-replace-regexp] . anzu-query-replace-regexp)
         :map isearch-mode-map
         ([remap isearch-query-replace] . anzu-isearch-query-replace)
         ([remap isearch-query-replace-regexp] . anzu-isearch-query-replace-regexp)
         :map replace-command-map
         ("C-a"
          . (lambda ()
              (interactive)
              (with-min-cursor 'anzu-query-replace)))
         ("C-e"
          . (lambda ()
              (interactive)
              (with-min-cursor 'anzu-query-replace-regexp)))
         :map query-replace-map
         ("RET" . act)
         ("M-RET" . automatic)
         :map multi-query-replace-map
         ("RET" . act)
         ("M-RET" . automatic)))


;; move around in buffer using search
(use-package swiper
  :defer
  :bind (:map search-command-map
              ("C-s" . swiper)))


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
