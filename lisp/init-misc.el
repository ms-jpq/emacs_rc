;;#################### ############## ####################
;;#################### Welcome Region ####################
;;#################### ############## ####################

;; kill welcome screen
(setq inhibit-startup-screen t)
;; empty init buffer
(setq initial-scratch-message nil)


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; watch filesystem for changes in open files
(global-auto-revert-mode t)


;;#################### END ####################
(provide 'init-misc)
