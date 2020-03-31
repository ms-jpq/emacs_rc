;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

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
(setq cua-keep-region-after-copy t)
(cua-mode t)

;; ctl-a
(global-set-key (kbd "C-a") 'mark-whole-buffer)

;; ctl-f
;; (global-set-key (kbd "C-f") ')

;; ctl-s
(global-set-key (kbd "C-s") 'save-buffer)


;;#################### END ####################
(provide 'init-keyboard)
