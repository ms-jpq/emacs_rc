;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

(use-package better-defaults
  :ensure t)


;; better help
(use-package helpful
  :ensure t
  :bind (([remap describe-key] . helpful-key)
         ([remap describe-function] . helpful-callable)
         ([remap describe-variable] . helpful-variable)
         ("C-h F" . helpful-function)
         ("C-h C" . helpful-command)
         :map emacs-lisp-mode-map
         ("C-c C-d" . helpful-at-point)))


;; normalize emac's undo - redo
(use-package undo-tree
  :ensure t
  :demand t
  :bind (("C-z" . undo-tree-undo)
         ("C-y" . undo-tree-redo))
  :config
  (global-undo-tree-mode))


;; share clipboard
(use-package xclip
  :ensure t
  :config
  (xclip-mode t))


;; better auto save
(use-package super-save
  :ensure t
  :custom
  (super-save-auto-save-when-idle t)
  :config
  (super-save-mode t))
(setq auto-save-default nil)


;; normalize emacs' regexp
(use-package pcre2el
  :ensure t
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
(require 'recentf)
(recentf-mode t)

(setq recentf-max-saved-items 100)
(setq recentf-max-menu-items recentf-max-saved-items)
(schedule-background-task 'recentf-save-list (* 1 60))


;; save minibuffer history
(savehist-mode 1)


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; yes/no -> y/n
(defalias 'yes-or-no-p 'y-or-n-p)


;;#################### ############## ####################
;;#################### Keymap Region ####################
;;#################### ############# ####################


(bind-keys
  :prefix-map dir-command-map
  :prefix "C-d")


;;#################### END ####################
(provide 'init-misc)
