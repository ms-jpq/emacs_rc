;;#################### ################## ####################
;;#################### File Search Region ####################
;;#################### ################## ####################



;;#################### #################### ####################
;;#################### Editor Search Region ####################
;;#################### #################### ####################

;; quick navigation via search
(use-package helm-swoop
  :ensure t
  :after (helm)
  :bind (("C-c C-i" . helm-swoop)
         ("C-c C-I" . helm-swoop-back-to-last-point)
         ("C-c M-i" . helm-multi-swoop)
         ("C-x M-i" . helm-multi-swoop-all)
         :map isearch-mode-map
              ("C-c C-i" . helm-swoop-from-isearch)
         :map helm-swoop-map
              ("M-i" . helm-multi-swoop-all-from-helm-swoop)
              ("M-m" . helm-multi-swoop-current-mode-from-helm-swoop)
              ("C--" . helm-previous-line)
              ("C-=" . helm-next-line)
         :map helm-multi-swoop-map
              ("C--" . helm-previous-line)
              ("C-=" . helm-next-line)))


;;#################### END ####################
(provide 'init-search)
