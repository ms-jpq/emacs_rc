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


;;#################### ############### ######################
;;#################### Filehist Region ######################
;;#################### ############### ######################

;; save recently accessed files
(recentf-mode t)

(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 1000)
(run-background-task 'recentf-save-list (* 1 60))


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; yes/no -> y/n
(defalias 'yes-or-no-p 'y-or-n-p)

;; save minibuffer history
(savehist-mode 1)


;;#################### END ####################
(provide 'init-misc)
