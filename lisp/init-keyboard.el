;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; popup, shows hotkeys
(use-package which-key
  :ensure t
  :demand t
  :custom
  (which-key-idle-delay 1)
  :bind (("C-h K" . which-key-show-full-keymap)
        ;;  :map which-key-C-h-map
        ;;       ("<left>" . which-key-show-previous-page-cycle)
        ;;       ("<right>" . which-key-show-next-page-cycle)
              )
  :config
  (which-key-mode))


;; bind cont key strokes
(use-package hydra
  :ensure t)


;; basically turns on capslock, except it's CTL
(use-package god-mode
  :ensure t
  :custom
  (god-exempt-major-modes nil)
  (god-exempt-predicates nil)
  :bind (("C-@" . god-mode-all)
         ("<escape>" . god-mode-all))
  :hook ((god-mode-enabled
          . (lambda ()
            (setq-default header-line-format
              (make-list 100 " >uwu< "))))
         (god-mode-disabled
          . (lambda ()
            (setq-default header-line-format nil)))))


;; unbind IME
(bind-keys
  ("C-\\" . nil))


;;#################### ############# ####################
;;#################### Scroll Region ####################
;;#################### ############# ####################

;; keyboard scroll one line at a time
(setq scroll-step 1)


;;#################### ########## ####################
;;#################### ESC Region ####################
;;#################### ########## ####################

;; can't bind esc straight up :<
(global-set-key (kbd "M-ESC") 'keyboard-escape-quit)

;; easier quit
(bind-keys
  ("C-q" . keyboard-escape-quit))


;;#################### ########## ####################
;;#################### CUA Region ####################
;;#################### ########## ####################

;; ctl-x, ctl-c, ctl-v, ctl-z, etc
(require 'cua-base)
(cua-mode t)
(setq cua-keep-region-after-copy t)


;; search keymap
(bind-keys
  :prefix-map search-command-map
  :prefix "C-f")


;; dir keymap
(bind-keys
  :prefix-map dir-command-map
  :prefix "C-d")


;; additional cua keys
(bind-keys
  ("C-s" . save-buffer)
  ("M-/" . comment-line))


;;#################### END ####################
(provide 'init-keyboard)
