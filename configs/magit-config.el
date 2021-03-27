;; The famous Magit

(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "C-x g") 'magit-status))

(setq magit-refresh-status-buffer nil)

(provide 'magit-config)
