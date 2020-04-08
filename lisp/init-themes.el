;;#################### ################ ####################
;;#################### intrinsic Region ####################
;;#################### ################ ####################

;; highlight current line
(global-hl-line-mode 1)

;; line numbers
(global-display-line-numbers-mode)

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
  :hook (emacs-startup .
    (lambda ()
      (load-theme 'spacemacs-light t))))


;; powerline
(use-package doom-modeline
  :config
  (doom-modeline-mode t))


;;#################### END ####################
(provide 'init-themes)
