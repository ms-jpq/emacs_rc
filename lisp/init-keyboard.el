;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; popup, shows hotkeys
(use-package which-key
  :ensure t
  :demand t
  :custom
  (which-key-idle-delay 1)
  ;; :bind (:map which-key-C-h-map
  ;;             ("<left>" . which-key-show-previous-page-cycle)
  ;;             ("<right>" . which-key-show-next-page-cycle))
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
  :bind (("C-@" . god-mode-all)
         ("<escape>" . god-mode-all)))


;;#################### ############# ####################
;;#################### Scroll Region ####################
;;#################### ############# ####################

;; keyboard scroll one line at a time
(setq scroll-step 1)


;;#################### ############# ####################
;;#################### Hotkey Region ####################
;;#################### ############# ####################

;; easier quit
(bind-keys
  ("C-q" . keyboard-escape-quit))

;; ctl-x, ctl-c, ctl-v, ctl-z, etc
(cua-mode t)
(setq cua-keep-region-after-copy t)

;; can't bind esc straight up :<
(global-set-key (kbd "M-ESC") 'keyboard-escape-quit)

;; comment line
(bind-keys
  ("C-c C-c" . comment-line))


;;#################### END ####################
(provide 'init-keyboard)
