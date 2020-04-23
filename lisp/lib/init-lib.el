;; -*- lexical-binding: t -*-

;;#################### ########### ####################
;;#################### Libs Region ####################
;;#################### ########### ####################

;; require 'use-package
(let ((pkg 'use-package))
  (unless (package-installed-p pkg)
    (package-install pkg))
  (require pkg)
  (setq use-package-always-ensure t))


;; help to benchmark load times
(use-package benchmark-init
  :demand
  :hook
  (emacs-startup . benchmark-init/deactivate))


;; prevent keybinding overwrite
(use-package better-defaults)


;;#################### ############## ####################
;;#################### Exports Region ####################
;;#################### ############## ####################

(defun install-from-git
    (pkg-name git-uri)
  "install package from git, if not exist"
  (let* ((install-dir (expand-file-name pkg-name user-packages-path))
         (messages-buffer "*Messages*")
         (git-install-cmd (concat "git clone --depth=1 " git-uri " " install-dir)))
    (unless (file-directory-p install-dir)
      (message git-install-cmd)
      (shell-command git-install-cmd messages-buffer messages-buffer))))


(defun schedule-background-task
    (frequency func)
  "run background task with frequency"
  (add-hook 'emacs-startup-hook
            (lambda ()
              (run-at-time nil frequency
                           (lambda ()
                             (let ((msg (current-message))
                                   (prev inhibit-message))
                               (setq inhibit-message t)
                               (funcall func)
                               (setq inhibit-message prev)
                               (when msg (message msg))))))))


(defun schedule-idle-background-task
    (repeat seconds func)
  "run idle background task with frequency"
  (add-hook 'emacs-startup-hook
            (lambda ()
              (run-with-idle-timer seconds repeat
                                   (lambda ()
                                     (let ((msg (current-message))
                                           (prev inhibit-message))
                                       (setq inhibit-message t)
                                       (funcall func)
                                       (setq inhibit-message prev)
                                       (when msg (message msg))))))))


(defun with-shift-region
    (func)
  "use shift mode for region marking funcs"
  (let ((oldval (or (cdr-safe transient-mark-mode) transient-mark-mode)))
    (call-interactively func)
    (setq transient-mark-mode (cons 'only oldval))))


(defun with-min-cursor
    (func)
  "execute func with cursor at begining of buffer, return"
  (save-excursion
    (goto-char (point-min))
    (call-interactively func)))


(defun current-selection
    ()
  (when (region-active-p)
    (buffer-substring-no-properties
     (region-beginning)
     (region-end))))


;;#################### END ####################
(provide 'init-lib)
