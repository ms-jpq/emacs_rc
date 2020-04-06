;;#################### ################## ####################
;;#################### Performance Region ####################
;;#################### ################## ####################

;; gc tweak
(setq gc-cons-threshold (* 100 1000 1000))

;; process comm tweak
(setq read-process-output-max (* 1000 1000))

;;#################### ########### ####################
;;#################### Init Region ####################
;;#################### ########### ####################

;; lisp path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lang" user-emacs-directory))

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
(require 'init-lib)
(require 'init-elpa)
(require 'init-misc)
(require 'init-keyboard)
(require 'init-mouse)
(require 'init-helm)
(require 'init-ivy)
(require 'init-git)
(require 'init-wm)
(require 'init-tree)
(require 'init-proj)
(require 'init-editor)
(require 'init-themes)
(require 'init-fun)


;;#################### ########### ####################
;;#################### Lang Region ####################
;;#################### ########### ####################
(require 'lang-json)
(require 'lang-markdown)
(require 'lang-typescript)
(require 'lang-yaml)


;;#################### ############# ####################
;;#################### Server Region ####################
;;#################### ############# ####################

;; start tcp server
(require 'server)
(unless (server-running-p)
  (server-start))
