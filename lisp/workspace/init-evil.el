;; -*- lexical-binding: t -*-

;;#################### ########### ####################
;;#################### Evil Region ####################
;;#################### ########### ####################

;; vim style keybindings
(use-package evil
  :demand
  :init
  (setq evil-toggle-key "C-@")
  :custom
  (evil-default-state 'emacs)
  (evil-shift-width 2)
  :config
  (setq-default header-line-format
                '(:eval (unless (evil-emacs-state-p)
                          (make-list 100 " >uwu< "))))
  (evil-mode t))


;;#################### ############# ####################
;;#################### Visual Region ####################
;;#################### ############# ####################

;; highlight code updates in evil mode
(use-package evil-goggles
  :demand
  :after (evil)
  :config
  (evil-goggles-mode)
  (evil-goggles-use-diff-faces))


;; keep search highlights around
(use-package evil-search-highlight-persist
  :demand
  :after (evil)
  :config
  (global-evil-search-highlight-persist t))


;;#################### ############# ####################
;;#################### States Region ####################
;;#################### ############# ####################

;; evil use iedit state
(use-package evil-iedit-state
  :defer
  :after (evil))


;;#################### ################### ####################
;;#################### Integrations Region ####################
;;#################### ################### ####################

(use-package treemacs-evil
  :defer
  :after (evil treemacs))


(use-package evil-magit
  :defer
  :after (evil magit))


;;#################### ################### ####################
;;#################### Enhancements Region ####################
;;#################### ################### ####################

;; search and replace
(use-package evil-anzu
  :defer
  :after (evil))


;; automatically insert surround
(use-package evil-surround
  :defer
  :after (evil))


;; vim style commenting
(use-package evil-nerd-commenter
  :defer
  :after (evil))


;;#################### END ####################
(provide 'init-evil)
