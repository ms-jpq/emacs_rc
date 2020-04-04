;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; popup, shows hotkeys
(use-package which-key
  :ensure t
  :custom
  (which-key-idle-delay 1)
  :config
  (which-key-mode))


;; bind cont key strokes
(use-package hydra
  :ensure t)


;; leader key in emacs
(use-package god-mode
  :ensure t
  :custom
  (god-exempt-major-modes nil)
  (god-exempt-predicates nil)
  :bind (("C-@" . god-mode-all)))


;;#################### ############# ####################
;;#################### Scroll Region ####################
;;#################### ############# ####################

;; keyboard scroll one line at a time
(setq scroll-step 1)


;;#################### ############# ####################
;;#################### Hotkey Region ####################
;;#################### ############# ####################

;; easier quit
(bind-key "C-q" (kbd "C-g"))

;; ctl-x, ctl-c, ctl-v, ctl-z, etc
(cua-mode t)
(setq cua-keep-region-after-copy t)

;; can't bind esc straight up :<
(global-set-key (kbd "M-ESC") 'keyboard-escape-quit)

;; comment line
(bind-key "C-]" 'comment-line)


;;#################### END ####################
(provide 'init-keyboard)
