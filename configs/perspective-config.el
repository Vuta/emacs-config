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

(setq persp-state-default-file "~/.emacs.d/perspective_state")
(add-hook 'kill-emacs-hook #'persp-state-save)

(provide 'perspective-config)
