;;#################### ############# ####################
;;#################### Themes Region ####################
;;#################### ############# ####################

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


;; nyan scrollbar
(use-package nyan-mode
  :ensure t
  :config
  (nyan-mode))


;; powerline
(use-package spaceline
  :ensure t
  :config
  (spaceline-spacemacs-theme))


;; main theme
(use-package spacemacs-theme
  :ensure t
  :defer
  :custom
  (spacemacs-theme-comment-bg nil))
;; require manual init
(require 'spacemacs-common)
(load-theme 'spacemacs-light t)


;;#################### END ####################
(provide 'init-themes)
