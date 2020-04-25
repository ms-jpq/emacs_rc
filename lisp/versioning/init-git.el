;; -*- lexical-binding: t -*-

;;#################### ########## ####################
;;#################### Git Region ####################
;;#################### ########## ####################

;; vscode like git in side line
(use-package git-gutter
  :demand
  :init
  (defhydra hy-git-gutter (vc-command-map "C-j")
    ("[" git-gutter:previous-hunk "previous change")
    ("]" git-gutter:next-hunk "next change")
    ("d" git-gutter:popup-hunk "show diff")
    ("s" git-gutter:stage-hunk "stage")
    ("k" git-gutter:revert-hunk "revert"))
  :bind (:map vc-command-map
              ("C-r"
               . (lambda ()
                   (interactive)
                   (global-git-gutter-mode nil)
                   (global-git-gutter-mode t))))
  :config
  (global-git-gutter-mode t))


;; shows file history
(use-package git-timemachine
  :defer
  :custom
  (git-timemachine-abbreviation-length 10)
  :bind (:map vc-command-map
              ("C-t" . git-timemachine-toggle)
              :map git-timemachine-mode-map
              ("=" . git-timemachine-show-previous-revision)
              ("-" . git-timemachine-show-next-revision)
              ("]" . git-timemachine-show-previous-commit)
              ("[" . git-timemachine-show-next-commit)))


;; requirement for magit
(use-package transient
  :defer
  :custom
  (transient-levels-file
    (expand-file-name "levels.el" (expand-file-name "transient" user-var-path)))
  (transient-values-file
    (expand-file-name "values.el" (expand-file-name "transient" user-var-path)))
  (transient-history-file
    (expand-file-name "history.el" (expand-file-name "transient" user-var-path))))


;; git porcelain
(use-package magit
  :defer
  :bind (:map vc-command-map
              ("C-m" . magit))
  :config
  (global-auto-revert-mode t))


;; highlight todos in magit
(use-package magit-todos
  :defer
  :commands (magit-todos-list ivy-magit-todos)
  :hook
  (magit-mode . magit-todos-mode))


(use-package treemacs-magit
  :defer)


;;#################### END ####################
(provide 'init-git)
