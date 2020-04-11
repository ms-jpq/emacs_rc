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
              ("C-q" . company-abort)
              ("TAB" . company-select-next-if-tooltip-visible-or-complete-selection))
  :config
  (global-company-mode))


;; rank suggestions by freq
(use-package company-prescient
  :after (prescient company)
  :config
  (company-prescient-mode))


;; auto complete on drugs
;; (use-package company-tabnine
;;   :after (company)
;;   :custom
;;   (company-tabnine-max-num-results 5)
;;   (company-tabnine-binaries-folder (expand-file-name "tabnine" user-emacs-directory))
;;   :config
;;   (add-to-list 'company-backends 'company-tabnine))


;;#################### END ####################
(provide 'init-suggestions)
