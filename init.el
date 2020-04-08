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
(add-to-list 'load-path (expand-file-name "workspace" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "editor" user-emacs-directory))
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
(require 'init-ivy)
(require 'init-git)
(require 'init-wm)
(require 'init-tree)
(require 'init-proj)
(require 'init-search)
(require 'init-highlight)
(require 'init-suggestions)
(require 'init-editor)
(require 'init-themes)


;;#################### ########### ####################
;;#################### Lang Region ####################
;;#################### ########### ####################
(require 'lang-fsharp)
(require 'lang-json)
(require 'lang-markdown)
(require 'lang-python)
(require 'lang-typescript)
(require 'lang-yaml)


;;#################### ################ ####################
;;#################### Benchmark Region ####################
;;#################### ################ ####################

(add-hook
  'emacs-startup-hook
    (lambda ()
      (when (getenv "EMACS_BENCHMARK")
        (kill-emacs))))
