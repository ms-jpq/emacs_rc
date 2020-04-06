;; -*- lexical-binding: t -*-

;;#################### ########### ####################
;;#################### Libs Region ####################
;;#################### ########### ####################


(defun schedule-background-task
  (func repeat)
  (add-hook 'emacs-startup-hook
    (lambda ()
      (run-at-time nil repeat
        (lambda ()
          (let ((msg (current-message))
                (prev inhibit-message))
            (setq inhibit-message nil)
            (funcall func)
            (setq inhibit-message prev)
            (when msg (message msg))))))))


;;#################### END ####################
(provide 'init-lib)
