;; -*- lexical-binding: t -*-

;;#################### ########## ####################
;;#################### Git Region ####################
;;#################### ########## ####################

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
  :after (magit)
  :commands (magit-todos-list ivy-magit-todos)
  :config
  (magit-todos-mode))


;; vscode like git in side line
(use-package git-gutter
  :defer
  :init
  (defhydra hy-git-gutter (vc-command-map "C-j")
    ("[" git-gutter:previous-hunk "previous change")
    ("]" git-gutter:next-hunk "next change")
    ("d" git-gutter:popup-hunk "show diff")
    ("s" git-gutter:stage-hunk "stage")
    ("k" git-gutter:revert-hunk "revert"))
  :hook
  (emacs-startup . global-git-gutter-mode))


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


;;#################### END ####################
(provide 'init-git)
