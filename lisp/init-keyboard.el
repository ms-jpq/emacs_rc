;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

(use-package ergoemacs-mode
  :ensure t
  :init
  (setq ergoemacs-theme nil)
  (setq ergoemacs-keyboard-layout "us")
  (setq cua-keep-region-after-copy t)
  :config
  (cua-selection-mode t)
  (ergoemacs-theme-option-off '(guru))
  (ergoemacs-mode 1)
  (progn ;; work around
    (global-set-key (kbd "M-<left>") (kbd "M-j"))
    (global-set-key (kbd "M-<right>") (kbd "M-l"))
    (global-set-key (kbd "M-<up>") (kbd "M-i"))
    (global-set-key (kbd "M-<down>") (kbd "M-k"))))


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

;; todo - add hotkeys


;;#################### END ####################
(provide 'init-keyboard)
