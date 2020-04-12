;;#################### ############### ####################
;;#################### Bindings Region ####################
;;#################### ############### ####################

;; bind cont key strokes
(use-package hydra
  :defer)


;; basically turns on capslock, except it's CTL
(use-package god-mode
  :defer
  :custom
  (god-exempt-major-modes nil)
  (god-exempt-predicates nil)
  :bind (("<escape>" . god-mode-all))
  :hook
  (god-mode-enabled
   . (lambda ()
       (setq-default header-line-format
                     (make-list 100 " >uwu< "))))
  (god-mode-disabled
   . (lambda ()
       (setq-default header-line-format nil))))


;;#################### ########## ####################
;;#################### CUA Region ####################
;;#################### ########## ####################

;; ctl-x, ctl-c, ctl-v, ctl-z, etc
(use-package cua-base
  :defer
  :init
  (define-key key-translation-map (kbd "C-q") (kbd "C-g"))
  :custom
  (cua-keep-region-after-copy t)
  :bind (("C-s" . save-buffer)
         ("M-a"
          . (lambda ()
              (interactive)
              (with-shift-region 'mark-whole-buffer)))
         ("M-/"
          . (lambda ()
              (interactive)
              (save-excursion (call-interactively 'comment-line)))))
  :hook
  (emacs-startup . cua-mode))


;; normalize emac's undo - redo
(use-package undo-tree
  :defer
  :bind (("C-z" . undo-tree-undo)
         ("C-y" . undo-tree-redo))
  :hook
  (emacs-startup . global-undo-tree-mode))


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; control - x too hard to hit
((lambda ()
   (global-set-key (kbd "C-]") ctl-x-map)
   (bind-keys
    :map ctl-x-map
    ("C-]" . save-buffers-kill-terminal))))


;; unbind IME
(bind-keys
 ("C-\\" . nil))


;;#################### END ####################
(provide 'init-keyboard)
