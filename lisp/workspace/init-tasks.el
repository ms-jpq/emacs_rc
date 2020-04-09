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
((lambda ()
  (require 'recentf)
  (setq recentf-max-saved-items 100)
  (setq recentf-max-menu-items recentf-max-saved-items)
  (schedule-background-task 'recentf-save-list (* 1 60))
  (recentf-mode t)))


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
;; simply clear out stale ones automatically
((lambda ()
  (require 'midnight)
  ;; special buffers have life time of <x> seconds
  (setq clean-buffer-list-delay-special (* 10 60))
  ;; normal buffers have life time of <x> seconds (originally days)
  (setq clean-buffer-list-delay-general (* 60 60 (/ 1 24 60 60)))
  ;; repetitively remove stale buffers every <x> seconds
  (schedule-background-task 'clean-buffer-list (* 1 60))))


;;#################### END ####################
(provide 'init-tasks)
