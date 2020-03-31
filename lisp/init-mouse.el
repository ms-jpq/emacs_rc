;;#################### ############ ####################
;;#################### Mouse Region ####################
;;#################### ############ ####################

;; enable mouse
(xterm-mouse-mode 1)


;;#################### ############# ####################
;;#################### Scroll Region ####################
;;#################### ############# ####################
(setq mouse-wheel-progressive-speed nil)
(global-set-key
  (kbd "<mouse-5>")
  (lambda () (interactive) (scroll-up 1)))
(global-set-key
  (kbd "<mouse-4>")
  (lambda () (interactive) (scroll-down 1)))


;;#################### ########### ####################
;;#################### Yank Region ####################
;;#################### ########### ####################

;; yank before moving cursor
(setq mouse-yank-at-point t)


;;#################### END ####################
(provide 'init-mouse)
