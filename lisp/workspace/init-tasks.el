;; -*- lexical-binding: t -*-

;;#################### ######### ####################
;;#################### GC Region ####################
;;#################### ######### ####################

;; GC when emacs is not being used
(schedule-idle-background-task t 2 'garbage-collect)


;;#################### ############### ####################
;;#################### Packages Region ####################
;;#################### ############### ####################

;; auto update
(use-package auto-package-update
  :defer
  :custom
  (auto-package-update-interval 14)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-delete-old-versions t)
  :hook
  ;; (emacs-startup . auto-package-update-maybe)
  )


;;#################### ############ ####################
;;#################### Files Region ####################
;;#################### ############ ####################

;; back up file
(setq backup-directory-alist
      (list `("." . ,(expand-file-name "backup" user-var-path))))


;; save cursor places in files
(use-package saveplace
  :defer
  :custom
  (save-place-file (expand-file-name "places" user-var-path)))


;; better auto save
(use-package super-save
  :defer
  :custom
  (super-save-auto-save-when-idle t)
  (super-save-idle-duration 1)
  (auto-package-update-last-update-day-filename
   (expand-file-name "auto-update" user-var-path))
  :init
  (setq auto-save-default nil)
  (setq auto-save-list-file-prefix nil)
  (schedule-idle-background-task nil 0 'super-save-mode))


;;#################### ############## ####################
;;#################### Buffers Region ####################
;;#################### ############## ####################

;; buffers will poll inotify
(global-auto-revert-mode t)


;; buffers are a leaky abstraction
;; garbage collect them
(use-package midnight
  :demand
  :custom
  (clean-buffer-list-delay-special (* 5 60)
                                   "special buffers have life time of <x> seconds")
  (clean-buffer-list-delay-general 0.01
                                   "normal buffers have life time of <x> days")
  :config
  (schedule-background-task (* 1 60) 'clean-buffer-list))


;;#################### END ####################
(provide 'init-tasks)
