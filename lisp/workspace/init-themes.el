;;#################### ################ ####################
;;#################### intrinsic Region ####################
;;#################### ################ ####################

;; highlight current line
(global-hl-line-mode 1)


;; softwrap text
(global-visual-line-mode t)


;; show linenum only in certain modes
((lambda ()
   (column-number-mode t)
   (add-hook 'prog-mode-hook 'display-line-numbers-mode)
   (add-hook 'text-mode-hook 'display-line-numbers-mode)
   (add-hook 'conf-mode-hook 'display-line-numbers-mode)))


;; idle animation
(use-package zone
  :config
  (zone-when-idle (* 10 60)))


;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; dimm background panes
(use-package dimmer
  :custom
  (dimmer-use-colorspace :rgb)
  (dimmer-adjustment-mode :both)
  (dimmer-watch-frame-focus-events nil "dont dim on leaving emacs")
  (dimmer-fraction 0.10 "is a quantized value :<")
  :after (which-key hydra)
  :config
  (dimmer-mode t)
  (dimmer-configure-which-key)
  (dimmer-configure-hydra))


;; main theme
(use-package spacemacs-theme
  :defer t
  :custom
  (spacemacs-theme-comment-bg nil)
  :init
  (require 'spacemacs-common)
  :hook
  (emacs-startup
   . (lambda ()
       (load-theme 'spacemacs-light t))))


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


;; turn line feed into page breaks TODO: you need to manually toggle this?
(use-package page-break-lines
  :config
  (global-page-break-lines-mode))


;;#################### END ####################
(provide 'init-themes)
