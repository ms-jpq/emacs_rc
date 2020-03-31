;;#################### ########### ####################
;;#################### Init Region ####################
;;#################### ########### ####################
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "extern" user-emacs-directory))


;;#################### ############### ####################
;;#################### Internal Region ####################
;;#################### ############### ####################
(require 'init-elpa)
(require 'init-misc)
(require 'init-keyboard)
(require 'init-mouse)


;;#################### ############### ####################
;;#################### External Region ####################
;;#################### ############### ####################
(require 'extern-misc)
(require 'extern-lsp)
(require 'extern-helm)
(require 'extern-git)
(require 'extern-tree)
(require 'extern-tab)
(require 'extern-scrollbar)
