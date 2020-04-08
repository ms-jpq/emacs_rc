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
(require 'zone)
(zone-when-idle (* 10 60))


;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; highlight search match count
(use-package anzu
  :custom
  (anzu-cons-mode-line-p nil)
  :config
  (global-anzu-mode t))


;; main theme
(use-package spacemacs-theme
  :defer
  :custom
  (spacemacs-theme-comment-bg nil)
  :hook (emacs-startup .
    (lambda ()
      (require 'spacemacs-common)
      (load-theme 'spacemacs-light t))))


;; powerline
(use-package doom-modeline)
;; require manual init
(doom-modeline-mode t)


;;#################### END ####################
(provide 'init-themes)
