;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

(use-package better-defaults)

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




;;#################### END ####################
(provide 'init-misc)
