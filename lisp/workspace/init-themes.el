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
   (add-hook 'conf-mode-hook 'display-line-numbers-mode)
   (add-hook 'text-mode-hook 'display-line-numbers-mode)))


;; idle animation
(use-package zone
  :config
  (zone-when-idle (* 10 60)))


;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; dimm background panes
;; (use-package dimmer
;;   :defer
;;   :after (which-key hydra)
;;   :custom
;;   (dimmer-use-colorspace :rgb)
;;   (dimmer-adjustment-mode :both)
;;   (dimmer-watch-frame-focus-events nil "dont dim on leaving emacs")
;;   (dimmer-fraction 0.10 "is a quantized value :<")
;;   :hook
;;   (emacs-startup . dimmer-mode)
;;   :config
;;   (dimmer-configure-which-key)
;;   (dimmer-configure-hydra))


;; main theme
(use-package spacemacs-theme
  :defer
  :custom
  (spacemacs-theme-comment-bg nil)
  (spacemacs-theme-custom-colors
   '((bg1 . "#f4f4f4")))
  :init
  (require 'spacemacs-common)
  :hook
  (emacs-startup
   . (lambda ()
       (load-theme 'spacemacs-light t))))


;; powerline
(use-package spaceline
  :defer
  :custom
  (spaceline-spaceline-NAME-p nil)
  :hook
  (emacs-startup . spaceline-spacemacs-theme))


;; turn line feed into page breaks
;; TODO: you need to manually toggle this?
(use-package page-break-lines
  :defer
  :hook
  (emacs-startup . global-page-break-lines-mode))


;;#################### END ####################
(provide 'init-themes)
