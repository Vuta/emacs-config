(use-package go-mode
  :ensure t)
(add-hook 'go-mode-hook
	  (lambda () (setq-local tab-width 4)))

(provide 'go-mode-config)
