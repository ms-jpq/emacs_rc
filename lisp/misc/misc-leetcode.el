;;#################### ############### ####################
;;#################### Leetcode Region ####################
;;#################### ############### ####################

(use-package names
  :defer t)


(use-package ctable
  :defer t)


(use-package leetcode
    :load-path "packages/leetcode-emacs"
    :custom
    (leetcode-path "~/leetcode")
    (leetcode-language "python3"))


;;#################### END ####################
(provide 'misc-leetcode)
