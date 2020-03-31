;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

(use-package ergoemacs-mode
  :ensure t
  :init
  (setq ergoemacs-theme nil)
  (setq ergoemacs-keyboard-layout "us")
  :config
  (cua-selection-mode t)
  (ergoemacs-theme-option-off '(guru))
  (ergoemacs-mode 1))


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



;;#################### END ####################
(provide 'init-keyboard)
