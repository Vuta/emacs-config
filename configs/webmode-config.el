;; Webmode
(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.es6\\'" . web-mode)))

(provide 'webmode-config)
