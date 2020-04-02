;;#################### ############# ####################
;;#################### Themes Region ####################
;;#################### ############# ####################

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
  :defer)

(require 'spacemacs-common)
(load-theme 'spacemacs-light)


;;#################### END ####################
(provide 'init-themes)
