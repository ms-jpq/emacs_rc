;;#################### ######### ####################
;;#################### GC Region ####################
;;#################### ######### ####################

;; GC when emacs is not being used
(schedule-idle-background-task 'garbage-collect t 2)


;;#################### ############# ####################
;;#################### Server Region ####################
;;#################### ############# ####################

(use-package server
  :hook
  (emacs-startup
   . (lambda ()
       (unless (server-running-p) (server-start)))))


;;#################### ############### ####################
;;#################### Packages Region ####################
;;#################### ############### ####################

;; auto update
(use-package auto-package-update
  :custom
  (auto-package-update-interval 14)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-delete-old-versions t)
  :hook
  (emacs-startup . auto-package-update-maybe))


;;#################### ############ ####################
;;#################### Files Region ####################
;;#################### ############ ####################

;; save recently accessed files
(use-package recentf
  :custom
  (recentf-max-saved-items 100)
  (recentf-max-menu-items 100)
  :config
  (recentf-mode t)
  (schedule-background-task 'recentf-save-list (* 1 60)))


;; better auto save
(use-package super-save
  :custom
  (super-save-auto-save-when-idle t)
  (super-save-idle-duration 1)
  :config
  (setq auto-save-default nil)
  (super-save-mode t))


;;#################### ############## ####################
;;#################### Buffers Region ####################
;;#################### ############## ####################

;; buffers will poll inotify
(global-auto-revert-mode t)


;; buffers are a leaky abstraction
;; garbage collect them
(use-package midnight
  :custom
  (clean-buffer-list-delay-special (* 5 60)
                                   "special buffers have life time of <x> seconds")
  (clean-buffer-list-delay-general 0.01
                                   "normal buffers have life time of <x> days")
  :config
  (schedule-background-task 'clean-buffer-list (* 1 60)))


;;#################### END ####################
(provide 'init-tasks)
