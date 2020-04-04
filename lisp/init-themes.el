;;#################### ############## ####################
;;#################### Interns Region ####################
;;#################### ############## ####################

;; highlight current line
(global-hl-line-mode 1)

;; line numbers
(global-display-line-numbers-mode)

;; softwrap text
(global-visual-line-mode t)

;; tab-width
(setq-default tab-width 2)

;; idle animation
(require 'zone)
(zone-when-idle 60)


;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; nyan scrollbar
(use-package nyan-mode
  :ensure t
  :config
  (nyan-mode))


;; highlight search match count
(use-package anzu
  :ensure t
  :custom
  (anzu-cons-mode-line-p nil)
  :config
  (global-anzu-mode t))


;; main theme
(use-package spacemacs-theme
  :ensure t
  :defer
  :custom
  (spacemacs-theme-comment-bg nil))
;; require manual init
(require 'spacemacs-common)
(load-theme 'spacemacs-light t)


;; powerline
(use-package spaceline
  :ensure t
  :after (helm nyan-mode winum)
  :config
  (spaceline-spacemacs-theme)
  (spaceline-helm-mode))


;;#################### END ####################
(provide 'init-themes)

