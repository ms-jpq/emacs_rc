;; -*- lexical-binding: t -*-

;;#################### ################ ####################
;;#################### intrinsic Region ####################
;;#################### ################ ####################

;; highlight current line
(global-hl-line-mode 1)


;; softwrap text
(global-visual-line-mode t)


;; idle animation
(use-package zone
  :config
  (zone-when-idle (* 10 60)))


;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; main theme
(use-package spacemacs-theme
  :demand
  :no-require
  :custom
  (spacemacs-theme-comment-bg nil)
  (spacemacs-theme-custom-colors
   '((bg1 . "#f4f4f4")))
  :init
  (require 'spacemacs-common)
  :config
  (load-theme 'spacemacs-light t))


;; powerline
(use-package spaceline
  :demand
  :custom
  (spaceline-minor-modes-p nil)
  :config
  (spaceline-spacemacs-theme))


;; turn line feed into page breaks
;; TODO: you need to manually toggle this?
(use-package page-break-lines
  :demand
  :hook
  (global-page-break-lines-mode t))


;;#################### END ####################
(provide 'init-themes)
