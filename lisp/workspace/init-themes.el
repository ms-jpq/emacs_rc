;;#################### ################ ####################
;;#################### intrinsic Region ####################
;;#################### ################ ####################

;; highlight current line
(global-hl-line-mode 1)

;; softwrap text
(global-visual-line-mode t)

;; idle animation
((lambda ()
  (require 'zone)
  (zone-when-idle (* 10 60))))


;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; main theme
(use-package spacemacs-theme
  :defer t
  :custom
  (spacemacs-theme-comment-bg nil)
  :init
  (require 'spacemacs-common)
  :hook ((emacs-startup .
          (lambda ()
            (load-theme 'spacemacs-light t)))))


;; nyan scrollbars
(use-package nyan-mode
  :custom
  (nyan-minimum-window-width 40)
  :config
  (nyan-mode))


;; powerline
(use-package doom-modeline
  :config
  (doom-modeline-mode t))


;;#################### END ####################
(provide 'init-themes)
