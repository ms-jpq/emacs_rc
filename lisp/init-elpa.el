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


;;#################### END ####################
(provide 'init-elpa)
