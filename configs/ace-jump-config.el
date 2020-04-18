;; Ace Jump Mode
(use-package ace-jump-mode
  :ensure t
  :config
  (autoload 'ace-jump-mode "ace-jump-mode" t)
  (define-key global-map (kbd "C-c SPC") 'ace-jump-mode))

(provide 'ace-jump-config)
