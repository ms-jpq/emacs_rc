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


;; prevent keybinding overwrite
(use-package better-defaults)


;;#################### ############## ####################
;;#################### Exports Region ####################
;;#################### ############## ####################

(defun schedule-background-task
  (func repeat)
  (add-hook 'emacs-startup-hook
    (lambda ()
      (run-at-time nil repeat
        (lambda ()
          (let ((msg (current-message))
                (prev inhibit-message))
            (setq inhibit-message t)
            (funcall func)
            (setq inhibit-message prev)
            (when msg (message msg))))))))


;;#################### END ####################
(provide 'init-lib)
