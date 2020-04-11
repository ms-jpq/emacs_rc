;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; share clipboard
(use-package xclip
  :defer
  :hook
  (emacs-startup . xclip-mode))


;; normalize emacs' regexp
(use-package pcre2el
  :defer
  :hook
  (emacs-startup . rxt-global-mode))


;;#################### ############## ####################
;;#################### Welcome Region ####################
;;#################### ############## ####################

((lambda ()
   (setq inhibit-startup-screen t)
   (setq initial-scratch-message nil)
   (setq initial-major-mode 'text-mode)))


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; yes/no -> y/n
(defalias 'yes-or-no-p 'y-or-n-p)


;;#################### END ####################
(provide 'init-misc)
