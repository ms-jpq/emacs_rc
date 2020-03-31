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
(require 'extern-undo)
(require 'extern-helm)
(require 'extern-tree)
(require 'extern-tab)
(require 'extern-scrollbar)
