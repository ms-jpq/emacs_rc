;;#################### ############ ####################
;;#################### Mouse Region ####################
;;#################### ############ ####################

;; enable mouse
(xterm-mouse-mode 1)


;;#################### ############# ####################
;;#################### Scroll Region ####################
;;#################### ############# ####################

((lambda ()
  (setq scroll-step 1)
  (bind-keys
    ("<mouse-5>" . (lambda () (interactive) (scroll-up 1)))
    ("<mouse-4>" . (lambda () (interactive) (scroll-down 1))))))


;;#################### END ####################
(provide 'init-mouse)