;; Neotree
(use-package neotree
  :ensure t
  :init
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
(global-set-key "\M-8" 'neotree-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

(provide 'neotree-config)
