;;#################### ################# ####################
;;#################### Typescript Region ####################
;;#################### ################# ####################

(use-package web-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode)))


;;#################### END ####################
(provide 'lang-typescript)
