;; -*- lexical-binding: t -*-

;;#################### ################ ####################
;;#################### Benchmark Region ####################
;;#################### ################ ####################

(add-hook
 'emacs-startup-hook
 (lambda ()
   (when (getenv "EMACS_BENCHMARK")
     (kill-emacs))))


;;#################### ################## ####################
;;#################### Performance Region ####################
;;#################### ################## ####################

;; process comm tweak
(setq read-process-output-max (* 1000 1000))

;; gc tweak
(progn
  (setq gc-cons-threshold (* 200 1000 1000))
  (setq gc-cons-percentage 0.7)
  (add-hook
   'emacs-startup-hook
   (lambda ()
     (setq gc-cons-threshold 1)
     (setq gc-cons-percentage 0.1))))


;;#################### ########### ####################
;;#################### Init Region ####################
;;#################### ########### ####################

;; archives
(progn
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
  (package-initialize)
  (let ((dir (expand-file-name "elpa" user-emacs-directory)))
    (unless (file-directory-p dir)
      (package-refresh-contents))))


;; libs path
(progn
  (let ((libs-path (expand-file-name "lisp" user-emacs-directory)))
    (add-to-list 'load-path (expand-file-name "lib" libs-path))
    (add-to-list 'load-path (expand-file-name "workspace" libs-path))
    (add-to-list 'load-path (expand-file-name "versioning" libs-path))
    (add-to-list 'load-path (expand-file-name "editor" libs-path))
    (add-to-list 'load-path (expand-file-name "lang" libs-path))
    (add-to-list 'load-path (expand-file-name "misc" libs-path))))


;; set customizations path
(let
    ((cf (expand-file-name "_customize.el" user-emacs-directory)))
  (setq custom-file cf)
  (unless (file-exists-p cf)
    (write-region "" nil cf))
  (load custom-file))


;;#################### ############### ####################
;;#################### Requires Region ####################
;;#################### ############### ####################


(let ((file-name-handler-alist nil))
  ;;#################### ########### ####################
  ;;#################### Libs Region ####################
  ;;#################### ########### ####################

  (require 'init-lib)
  (require 'init-keymaps)


  ;;#################### ################ ####################
  ;;#################### Workspace Region ####################
  ;;#################### ################ ####################

  (require 'init-evil)
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


  ;;#################### ############# ####################
  ;;#################### Editor Region ####################
  ;;#################### ############# ####################

  (require 'init-cursor)
  (require 'init-format)
  (require 'init-highlight)
  (require 'init-lsp)
  (require 'init-search)
  (require 'init-suggestions)
  (require 'init-whitespace)


  ;;#################### ########### ####################
  ;;#################### Lang Region ####################
  ;;#################### ########### ####################

  (require 'lang-docker)
  (require 'lang-fsharp)
  (require 'lang-git)
  (require 'lang-haskell)
  (require 'lang-java)
  (require 'lang-jinja2)
  (require 'lang-json)
  (require 'lang-markdown)
  (require 'lang-python)
  (require 'lang-racket)
  (require 'lang-toml)
  (require 'lang-typescript)
  (require 'lang-vimrc)
  (require 'lang-yaml)

  
  ;;#################### END ####################
  )
;;#################### END ####################
