;;#################### ############### ####################
;;#################### Archives Region ####################
;;#################### ############### ####################
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


;;#################### ############### ####################
;;#################### Requires Region ####################
;;#################### ############### ####################

;; renew on missing elpa dir
(let ((dir (expand-file-name "elpa" user-emacs-directory)))
  (when (not (file-directory-p dir))
    (package-refresh-contents)))


;; require 'use-package
((lambda
  (pkg)
  (when (not (package-installed-p pkg))
    (package-install pkg))
    (require pkg))
  'use-package)


;; auto update
(use-package auto-package-update
  :ensure t
  :custom
  (auto-package-update-interval 14)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-delete-old-versions t))


;; package mgr
(use-package epl
  :ensure t
  :commands (epl-refresh))


;;#################### END ####################
(provide 'init-elpa)
