;;#################### ################# ####################
;;#################### Typescript Region ####################
;;#################### ################# ####################

(define-derived-mode typescript-mode prog-mode "Typescript"
  "Major mode for editing typescript."
  :group 'ts
  nil)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))


;;#################### END ####################
(provide 'lang-typescript)
