;;#################### ################## ####################
;;#################### Performance Region ####################
;;#################### ################## ####################

((lambda ()
  ;; gc tweak
  (setq gc-cons-threshold (* 100 1000 1000))
  ;; process comm tweak
  (setq read-process-output-max (* 1000 1000))))


;;#################### ########### ####################
;;#################### Init Region ####################
;;#################### ########### ####################

;; archives
((lambda ()
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
  (package-initialize)
  (let ((dir (expand-file-name "elpa" user-emacs-directory)))
  (unless (file-directory-p dir)
    (package-refresh-contents)))))


;; libs path
((lambda ()
  (let ((libs-path (expand-file-name "lisp" user-emacs-directory)))
    (add-to-list 'load-path (expand-file-name "lib" libs-path))
    (add-to-list 'load-path (expand-file-name "workspace" libs-path))
    (add-to-list 'load-path (expand-file-name "versioning" libs-path))
    (add-to-list 'load-path (expand-file-name "editor" libs-path))
    (add-to-list 'load-path (expand-file-name "lang" libs-path)))))


;; set customizations path
(let
  ((cf (expand-file-name "_customize.el" user-emacs-directory)))
  (when (not (file-exists-p cf))
    (write-region "" nil cf))
  (setq custom-file cf)
  (load custom-file))


;;#################### ########### ####################
;;#################### Libs Region ####################
;;#################### ########### ####################

(require 'init-lib)
(require 'init-keymaps)


;;#################### ################ ####################
;;#################### Workspace Region ####################
;;#################### ################ ####################

(require 'init-help)
(require 'init-keyboard)
(require 'init-misc)
(require 'init-mouse)
(require 'init-navigation)
(require 'init-proj)
(require 'init-tasks)
(require 'init-themes)
(require 'init-tree)
(require 'init-wm)


;;#################### ################# ####################
;;#################### Versioning Region ####################
;;#################### ################# ####################

(require 'init-git)


;;#################### ############## ####################
;;#################### Editor Region ####################
;;#################### ############# ####################

(require 'init-cursor)
(require 'init-highlight)
(require 'init-lsp)
(require 'init-search)
(require 'init-suggestions)
(require 'init-whitespace)


;;#################### ########### ####################
;;#################### Lang Region ####################
;;#################### ########### ####################

(require 'lang-fsharp)
(require 'lang-json)
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
