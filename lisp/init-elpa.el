;;#################### ############### ####################
;;#################### Archives Region ####################
;;#################### ############### ####################
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


;;#################### ############### ####################
;;#################### Requires Region ####################
;;#################### ############### ####################

;; internal use
(defun require-pkg-
  (pkg)
  (when (not (package-installed-p pkg))
    (package-install pkg)))


(require-pkg- 'epl)
(require 'epl)
(epl-initialize)


(defun require-pkg
  (pkg)
  (when (not (epl-package-installed-p pkg))
    (epl-package-install pkg)))

;; (epl-upgrade)


;;#################### END ####################
(provide 'init-elpa)
