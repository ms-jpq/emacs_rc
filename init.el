;;#################### ########### ####################
;;#################### Init Region ####################
;;#################### ########### ####################
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lang" user-emacs-directory))


;;#################### ################### ####################
;;#################### Dependencies Region ####################
;;#################### ################### ####################
(require 'init-elpa)
(require 'init-misc)
(require 'init-keyboard)
(require 'init-mouse)
(require 'init-lsp)
(require 'init-helm)
(require 'init-git)
(require 'init-tree)
(require 'init-tabs)
(require 'init-scrollbar)
