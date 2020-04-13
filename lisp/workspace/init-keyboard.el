;; -*- lexical-binding: t -*-

;;#################### ########## ####################
;;#################### CUA Region ####################
;;#################### ########## ####################

;; ctl-x, ctl-c, ctl-v, ctl-z, etc
(use-package cua-base
  :demand
  :init
  (define-key key-translation-map (kbd "C-q") (kbd "C-g"))
  :custom
  (cua-keep-region-after-copy t)
  :bind (("C-s" . save-buffer)
         ("M-a"
          . (lambda ()
              (interactive)
              (with-shift-region 'mark-whole-buffer)))
         ("M-/"
          . (lambda ()
              (interactive)
              (save-excursion (call-interactively 'comment-line)))))
  :config
  (cua-mode t))


;; normalize emac's undo - redo
(use-package undo-tree
  :demand
  :bind (("C-z" . undo)
         ("C-y" . redo))
  :config
  (global-undo-tree-mode t))


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; control - x too hard to hit
(progn
  (global-set-key (kbd "C-]") ctl-x-map)
  (bind-keys
   :map ctl-x-map
   ("C-]" . save-buffers-kill-terminal)))


;; unbind IME
(bind-keys
 ("C-\\" . nil))


;;#################### ########### ####################
;;#################### Evil Region ####################
;;#################### ########### ####################

(use-package evil
  :demand
  :init
  (setq evil-toggle-key "C-@")
  :custom
  (evil-default-state 'emacs)
  (evil-shift-width 2)
  :config
  (setq-default header-line-format
                '(:eval (unless (evil-emacs-state-p)
                          (make-list 100 " >uwu< "))))
  (evil-mode t))


;;#################### END ####################
(provide 'init-keyboard)
