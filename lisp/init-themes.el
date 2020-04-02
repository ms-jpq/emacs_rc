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
  :defer
  :custom
  (spacemacs-theme-comment-bg nil))
;; require manual init
(require 'spacemacs-common)
(load-theme 'spacemacs-light t)


;;#################### END ####################
(provide 'init-themes)
