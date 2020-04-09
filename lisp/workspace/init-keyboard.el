;;#################### ############### ####################
;;#################### Bindings Region ####################
;;#################### ############### ####################

;; bind cont key strokes
(use-package hydra)


;; basically turns on capslock, except it's CTL
(use-package god-mode
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
((lambda ()
  (require 'cua-base)
  (cua-mode t)
  (setq cua-keep-region-after-copy t)))


;; normalize emac's undo - redo
(use-package undo-tree
  :demand t
  :bind (("C-z" . undo-tree-undo)
         ("C-y" . undo-tree-redo))
  :config
  (global-undo-tree-mode))


;; additional cua keys
(bind-keys
  ("C-s" . save-buffer)
  ("M-/" . comment-line))


;; unbind IME
(bind-keys
  ("C-\\" . nil))


;;#################### END ####################
(provide 'init-keyboard)