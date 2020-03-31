;;#################### ############### ####################
;;#################### Archives Region ####################
;;#################### ############### ####################
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; comment me out
;; (package-refresh-contents)


;;#################### ############### ####################
;;#################### Requires Region ####################
;;#################### ############### ####################

;; internal use
(defun require-pkg-
  (pkg)
  (when (not (package-installed-p pkg))
    (package-install pkg)))


(require-pkg- 'use-package)
(require 'use-package)


;;#################### END ####################
(provide 'init-elpa)
