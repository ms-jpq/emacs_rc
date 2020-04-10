;;#################### ########## ####################
;;#################### Git Region ####################
;;#################### ########## ####################

;; git porcelain
(use-package magit
  :bind (:map vc-command-map
              ("C-m" . magit)
         :map magit-mode-map
              ("C-q" . magit-mode-bury-buffer))
  :config
  (global-auto-revert-mode t))


;; highlight todos in magit
(use-package magit-todos
  :after (magit)
  :commands (magit-todos-list ivy-magit-todos)
  :config
  (magit-todos-mode))


;; vscode like git in side line
(use-package git-gutter
  :config
  (defhydra hy-git-gutter (vc-command-map "C-j")
    ("[" git-gutter:previous-hunk)
    ("]" git-gutter:next-hunk)
    ("d" git-gutter:popup-hunk)
    ("s" git-gutter:stage-hunk)
    ("k" git-gutter:revert-hunk))
  (global-git-gutter-mode t))


;; shows file history
(use-package git-timemachine
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
