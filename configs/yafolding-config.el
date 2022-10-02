(use-package yafolding
  :ensure t)
(add-hook 'ruby-mode-hook 'yafolding-mode)

(global-set-key (kbd "M-RET")   'yafolding-toggle-element)

(provide 'yafolding-config)
