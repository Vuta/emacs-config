;; Projectile
(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil)
  :config
  (projectile-mode 1))
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Projectile Helm
(use-package helm-projectile
  :ensure t)
(helm-projectile-on)

;; (projectile-rails-global-mode)

(provide 'projectile-config)
