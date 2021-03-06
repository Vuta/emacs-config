;; install custome packages
(setq packages-list
      '(ace-jump-mode
        evil
        helm
        neotree
        all-the-icons
        markdown-mode
        projectile
        projectile-rails
        helm-projectile
        one-themes
        doom-themes
        gruvbox-theme
        web-mode
        elixir-mode
        rainbow-mode
        rust-mode))

(dolist (package packages-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'packages-config)
