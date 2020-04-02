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


;;#################### ############# ####################
;;#################### Scroll Region ####################
;;#################### ############# ####################

;; keyboard scroll one line at a time
(setq scroll-step 1)


;;#################### ############# ####################
;;#################### Hotkey Region ####################
;;#################### ############# ####################

;; ctl-x, ctl-c, ctl-v, ctl-z, etc
(cua-mode t)
(setq cua-keep-region-after-copy t)

;; can't bind esc straight up :<
(global-set-key (kbd "M-ESC") 'keyboard-escape-quit)


;;#################### END ####################
(provide 'init-keyboard)
