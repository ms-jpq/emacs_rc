;;#################### ########### ####################
;;#################### Init Region ####################
;;#################### ########### ####################
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lang" user-emacs-directory))


(require 'server)
(setq server-socket-dir (expand-file-name "server" user-emacs-directory))
(setq server-use-tcp t)
(unless (server-running-p)
  (server-start))


;;#################### ############## ####################
;;#################### Customs Region ####################
;;#################### ############## ####################

;; set custom el
(let
  ((cf (expand-file-name "_customize.el" user-emacs-directory)))
  (when (not (file-exists-p cf))
    (write-region "" nil cf))
  (setq custom-file cf)
  (load custom-file))


;;#################### ################### ####################
;;#################### Dependencies Region ####################
;;#################### ################### ####################
(require 'init-elpa)
(require 'init-misc)
(require 'init-keyboard)
(require 'init-mouse)
(require 'init-helm)
(require 'init-wm)
(require 'init-fm)
(require 'init-tree)
(require 'init-proj)
(require 'init-editor)
(require 'init-git)
(require 'init-themes)
(require 'init-fun)


;;#################### ########### ####################
;;#################### Lang Region ####################
;;#################### ########### ####################
(require 'typescript)

