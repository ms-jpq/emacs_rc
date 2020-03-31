;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

(use-package better-defaults
  :ensure t)


;;#################### ########### ####################
;;#################### Lang Region ####################
;;#################### ########### ####################

;; utf-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)


;;#################### ############## ####################
;;#################### Welcome Region ####################
;;#################### ############## ####################

;; kill welcome screen
(setq inhibit-startup-screen t)
;; empty init buffer
(setq initial-scratch-message nil)


;;#################### ########### ######################
;;#################### Editor Region ####################
;;#################### ########### ######################

;; highlight current line
(global-hl-line-mode 1)

;; line numbers
(global-display-line-numbers-mode)

;; softwrap text
(global-visual-line-mode t)

;; tab-width
(setq-default tab-width 2)


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; yes/no -> y/n
(defalias 'yes-or-no-p 'y-or-n-p)

;; save minibuffer history
(savehist-mode 1)


;;#################### END ####################
(provide 'init-misc)
