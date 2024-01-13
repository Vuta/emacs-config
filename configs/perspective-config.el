(use-package perspective
  :ensure t
  :bind
  ("C-x C-b" . persp-list-buffers)         ; or use a nicer switcher, see below
  :custom
  (persp-mode-prefix-key (kbd "C-c e"))  ; pick your own prefix key here
  :init
  (persp-mode))

(use-package persp-projectile
  :ensure t)
(define-key projectile-mode-map (kbd "C-c p p") 'projectile-persp-switch-project)

(provide 'perspective-config)
