;; -*- lexical-binding: t -*-

;;#################### ########## ####################
;;#################### CUA Region ####################
;;#################### ########## ####################

;; ctl-x, ctl-c, ctl-v, ctl-z, etc
(use-package cua-base
  :demand
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
  (define-key key-translation-map (kbd "C-q") (kbd "C-g"))
  (cua-mode t))


;; normalize emac's undo - redo
(use-package undo-tree
  :demand
  :custom
  (undo-tree-auto-save-history t)
  (undo-tree-history-directory-alist
   (list `("." . ,(expand-file-name "undo" user-emacs-directory))))
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
   ("C-]"
    . (lambda ()
        (interactive)
        (do-auto-save)
        (save-buffers-kill-terminal)))))


;; unbind IME
(bind-keys
 ("C-\\" . nil))


;;#################### END ####################
(provide 'init-keyboard)
