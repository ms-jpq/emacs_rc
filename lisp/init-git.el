;;#################### ########## ####################
;;#################### Git Region ####################
;;#################### ########## ####################

;; git porcelain
(use-package magit
  :ensure t
  :bind (("C-c C-m" . magit)
         :map magit-mode-map
              ("C-q" . magit-mode-bury-buffer))
  :config
  (global-auto-revert-mode t))


;; highlight todos in magit
(use-package magit-todos
  :ensure t
  :after (magit)
  :commands (magit-todos-list ivy-magit-todos)
  :config
  (magit-todos-mode))


;; vscode like git in side line
(use-package git-gutter
  :ensure t
  :demand t
  :config
  (defhydra hy-git-gutter (global-map "C-k")
    ("[" git-gutter:previous-hunk)
    ("]" git-gutter:next-hunk)
    ("s" git-gutter:stage-hunk)
    ("v" git-gutter:revert-hunk)
    ("m" git-gutter:mark-hunk)
    ("p" git-gutter:popup-hunk))
  (global-git-gutter-mode t))


;; shows file history
(use-package git-timemachine
  :ensure t
  :custom
  (git-timemachine-abbreviation-length 10)
  :bind (("C-c C-t" . git-timemachine-toggle)
         :map git-timemachine-mode-map
         ("=" . git-timemachine-show-previous-revision)
         ("-" . git-timemachine-show-next-revision)
         ("]" . git-timemachine-show-previous-commit)
         ("[" . git-timemachine-show-next-commit)))


;;#################### END ####################
(provide 'init-git)
