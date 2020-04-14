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
  (emacs-startup . auto-package-update-maybe))


;;#################### ############ ####################
;;#################### Files Region ####################
;;#################### ############ ####################

;; better auto save
(use-package super-save
  :defer
  :custom
  (super-save-auto-save-when-idle t)
  (super-save-idle-duration 1)
  :init
  (setq auto-save-default nil)
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
