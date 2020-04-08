;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

(use-package better-defaults)


;; better help
(use-package helpful
  :bind (([remap describe-key] . helpful-key)
         ([remap describe-function] . helpful-callable)
         ([remap describe-variable] . helpful-variable)
         ("C-h F" . helpful-function)
         ("C-h C" . helpful-command)
         :map emacs-lisp-mode-map
         ("C-c C-d" . helpful-at-point)))


;; normalize emac's undo - redo
(use-package undo-tree
  :demand t
  :bind (("C-z" . undo-tree-undo)
         ("C-y" . undo-tree-redo))
  :config
  (global-undo-tree-mode))


;; share clipboard
(use-package xclip
  :config
  (xclip-mode t))


;; better auto save
(use-package super-save
  :custom
  (super-save-auto-save-when-idle t)
  (super-save-idle-duration 1)
  :config
  (super-save-mode t))
(setq auto-save-default nil)


;; normalize emacs' regexp
(use-package pcre2el
  :config
  (rxt-global-mode))


;;#################### ############## ####################
;;#################### Welcome Region ####################
;;#################### ############## ####################

;; kill welcome screen
(setq inhibit-startup-screen t)

;; empty init buffer
(setq initial-scratch-message nil)

;; init buffers are plain txt mode
(setq initial-major-mode 'text-mode)


;;#################### ########### ######################
;;#################### Hist Region ######################
;;#################### ########### ######################

;; save recently accessed files
((lambda ()
  (require 'recentf)
  (setq recentf-max-saved-items 100)
  (setq recentf-max-menu-items recentf-max-saved-items)
  (schedule-background-task 'recentf-save-list (* 1 60))
  (recentf-mode t)))


;; save minibuffer history
(savehist-mode 1)


;;#################### ################# ####################
;;#################### Whitespace Region ####################
;;#################### ################# ####################

;; default indent by 2
(setq-default tab-width 2)

;; require final new line
(setq-default require-final-newline t)

;; trim trailing white spaces
(use-package whitespace-cleanup-mode
  :config
  (global-whitespace-cleanup-mode))


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; yes/no -> y/n
(defalias 'yes-or-no-p 'y-or-n-p)


;; auto update
(use-package auto-package-update
  :custom
  (auto-package-update-interval 14)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-delete-old-versions t)
  :hook ((emacs-startup . auto-package-update-maybe)))


;;#################### END ####################
(provide 'init-misc)
