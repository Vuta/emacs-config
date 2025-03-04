(use-package rust-mode
  :ensure t)

(add-hook 'rust-mode-hook
          (lambda () (setq tab-width 4)))

(provide 'rust-mode-config)
