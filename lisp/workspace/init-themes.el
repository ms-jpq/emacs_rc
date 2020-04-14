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

;; powerline
(use-package doom-modeline
  :config
  (doom-modeline-mode t))


;; main theme
(use-package spacemacs-theme
  :demand
  :no-require
  :custom
  (spacemacs-theme-comment-bg nil)
  (spacemacs-theme-custom-colors
   '((bg1 . "#f4f4f4")))
  :config
  (load-theme 'spacemacs-light t))



;;#################### END ####################
(provide 'init-themes)
