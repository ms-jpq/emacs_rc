;; -*- lexical-binding: t -*-

;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :defer
  :custom
  (treemacs-follow-after-init t)
  (treemacs-project-follow-cleanup t)
  (treemacs-missing-project-action 'remove)
  (treemacs-file-event-delay 1000)
  (treemacs-persist-file
   (make-temp-file "emacs-treemacs")
   "do not persist state for treemacs")
  :bind (("C-b" . treemacs)
         :map treemacs-mode-map
         ("SPC" . treemacs-peek))
  :config
  (treemacs-git-mode 'deferred)
  (treemacs-filewatch-mode t)
  (treemacs-fringe-indicator-mode t)
  (require 'projectile)
  (when (projectile-project-p)
    (treemacs-add-and-display-current-project)
    (treemacs-toggle-node)
    (treemacs)))


(use-package treemacs-projectile
  :defer)


(use-package treemacs-magit
  :defer)


;; TODO: this thing segfaults!
(use-package lsp-treemacs
  :defer
  :commands (lsp-treemacs-errors-list))


;;#################### END ####################
(provide 'init-tree)
