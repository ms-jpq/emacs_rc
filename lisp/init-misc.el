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

;; watch filesystem for changes in open files
(global-auto-revert-mode t)

;; line numbers
(global-display-line-numbers-mode)

;; softwrap text
(global-visual-line-mode t)


;;#################### END ####################
(provide 'init-misc)
