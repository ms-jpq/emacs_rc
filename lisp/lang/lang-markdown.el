;;#################### ############### ####################
;;#################### Markdown Region ####################
;;#################### ############### ####################

(use-package markdown-mode
  :defer t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :custom
  (markdown-command "multimarkdown"))


;;#################### END ####################
(provide 'lang-markdown)
