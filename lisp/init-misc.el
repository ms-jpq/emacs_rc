;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

(use-package better-defaults
  :ensure t)


;; better help
(use-package helpful
  :ensure t
  :bind (([remap describe-key] . helpful-key)
         ("C-h F" . helpful-function)
         ("C-h C" . helpful-command)
         :map lisp-mode-map
         ("C-c C-d" . helpful-at-point)))


;; normalize emac's undo - redo
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode)
  (defalias 'undo 'undo-tree-undo)
  (defalias 'redo 'undo-tree-redo)
  (bind-key "C-z" 'undo)
  (bind-key "C-y" 'redo))


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
(setq initial-major-mode 'fundamental-mode)


;;#################### ############### ######################
;;#################### Autosave Region ####################
;;#################### ############### ######################

;; autosave to actual file
(auto-save-visited-mode t)

;; less delay after typing
(setq auto-save-timeout 1)
(setq auto-save-visited-interval 1)
(setq auto-save-interval 1)


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; yes/no -> y/n
(defalias 'yes-or-no-p 'y-or-n-p)

;; save minibuffer history
(savehist-mode 1)


;;#################### END ####################
(provide 'init-misc)
