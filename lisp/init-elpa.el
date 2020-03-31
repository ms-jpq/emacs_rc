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

(defalias 'require-pkg 'epl-package-install)

;; (epl-upgrade)


;;#################### END ####################
(provide 'init-elpa)
