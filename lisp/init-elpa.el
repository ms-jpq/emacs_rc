;;#################### ############### ####################
;;#################### Archives Region ####################
;;#################### ############### ####################
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


;;#################### ############### ####################
;;#################### Requires Region ####################
;;#################### ############### ####################
(defun require-pkg
  (pkg)
  (when (not (package-installed-p pkg))
    (package-install pkg)))


;;#################### END ####################
(provide 'init-elpa)
