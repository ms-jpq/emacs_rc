;;#################### ###################### ####################
;;#################### Discoverability Region ####################
;;#################### ###################### ####################

;; popup, shows hotkeys
(use-package which-key
  :demand t
  :custom
  (which-key-idle-delay 1)
  :bind (("C-h K" . which-key-show-full-keymap)
        ;;  :map which-key-C-h-map
        ;;       ("<left>" . which-key-show-previous-page-cycle)
        ;;       ("<right>" . which-key-show-next-page-cycle)
              )
  :config
  (which-key-mode))


;; better help panes
(use-package helpful
  :bind (([remap describe-key] . helpful-key)
         ([remap describe-function] . helpful-callable)
         ([remap describe-variable] . helpful-variable)
         ("C-h F" . helpful-function)
         ("C-h C" . helpful-command)
         :map emacs-lisp-mode-map
         ("C-c C-d" . helpful-at-point)))


;;#################### END ####################
(provide 'init-help)
