;; Setup evil mode
(setq evil-want-C-i-jump nil)
(use-package evil
  :ensure t
  :config
  (evil-mode 1))
(setq evil-insert-state-cursor '(default box))

(provide 'evil-config)
