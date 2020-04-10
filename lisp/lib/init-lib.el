;; -*- lexical-binding: t -*-

;;#################### ########### ####################
;;#################### Libs Region ####################
;;#################### ########### ####################

;; require 'use-package
((lambda
   (pkg)
   (unless (package-installed-p pkg)
     (package-install pkg))
   (require pkg)
   (setq use-package-always-ensure t))
 'use-package)


;; help to benchmark load times
(use-package benchmark-init
  :demand t
  :hook
  (after-init . benchmark-init/deactivate))


;; prevent keybinding overwrite
(use-package better-defaults)


;;#################### ############## ####################
;;#################### Exports Region ####################
;;#################### ############## ####################

(defun schedule-background-task
    (func frequency)
  "run background task with frequency"
  (add-hook 'emacs-startup-hook
            (lambda ()
              (run-at-time nil frequency
                           (lambda ()
                             (let ((msg (current-message))
                                   (prev inhibit-message))
                               (setq inhibit-message t)
                               (funcall func)
                               (setq inhibit-message prev)
                               (when msg (message msg))))))))


(defun schedule-idle-background-task
    (func repeat seconds)
  "run idle background task with frequency"
  (add-hook 'emacs-startup-hook
            (lambda ()
              (run-with-idle-timer seconds repeat
                                   (lambda ()
                                     (let ((msg (current-message))
                                           (prev inhibit-message))
                                       (setq inhibit-message t)
                                       (funcall func)
                                       (setq inhibit-message prev)
                                       (when msg (message msg))))))))


;;#################### END ####################
(provide 'init-lib)
