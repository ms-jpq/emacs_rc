;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :demand t
  :after (projectile)
  :custom
  (treemacs-follow-after-init t)
  (treemacs-project-follow-cleanup t)
  (treemacs-missing-project-action 'remove)
  (treemacs-file-event-delay 1000)
  :bind (("C-b" . treemacs))
  :config
  (when (file-exists-p treemacs-persist-file)
    (delete-file treemacs-persist-file))
  (when (file-exists-p treemacs-last-error-persist-file)
    (delete-file treemacs-last-error-persist-file))
  (treemacs-git-mode 'deferred)
  (treemacs-filewatch-mode t)
  (treemacs-fringe-indicator-mode t)
  (when (projectile-project-p)
    (treemacs-add-and-display-current-project)
    (treemacs-toggle-node)))


(use-package treemacs-magit
  :after (treemacs magit))


;;#################### END ####################
(provide 'init-tree)
