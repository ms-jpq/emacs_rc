;;#################### ########### ####################
;;#################### Libs Region ####################
;;#################### ########### ####################


(defun run-background-task
  (task repeat)
  (run-at-time nil repeat
    (lambda ()
      (let ((msg (current-message))
            (prev inhibit-message))
        (setq inhibit-message t)
        (task)
        (setq inhibit-message prev)
        (when msg (message msg))))))


;;#################### END ####################
(provide 'init-lib)
