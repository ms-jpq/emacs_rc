;; -*- lexical-binding: t -*-

;;#################### ############## ####################
;;#################### Company Region ####################
;;#################### ############## ####################

;; auto suggestions
(use-package company
  :demand
  :custom
  (company-selection-wrap-around t)
  (company-minimum-prefix-length 1)
  (company-idle-delay 0 "company asks backend")
  (company-tooltip-idle-delay 0.5 "tooltip shows (frontend)")
  :bind (:map company-active-map
              ("TAB" . company-select-next-if-tooltip-visible-or-complete-selection))
  :config
  (global-company-mode t))


;; rank suggestions by freq
(use-package company-prescient
  :demand
  :config
  (company-prescient-mode t))


;;#################### END ####################
(provide 'init-suggestions)
