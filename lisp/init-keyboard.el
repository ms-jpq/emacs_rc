;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; popup, shows hotkeys
(use-package which-key
  :ensure t
  :init
  (setq which-key-idle-delay 0.5)
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


;;#################### END ####################
(provide 'init-keyboard)
