;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))

(package-initialize)
;; (package-refresh-contents)

(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))

;; add configs directory to load path
(setq configs-path
      (expand-file-name "configs" user-emacs-directory))
(add-to-list 'load-path configs-path)

(setq themes-path
      (expand-file-name "themes" user-emacs-directory))
(add-to-list 'load-path themes-path)
(add-to-list 'custom-theme-load-path themes-path)

;; load custom.el
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Bootstrap 'use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; install and require packages config
(setq config-files
      '(packages-config
        evil-config
        my-theme-config
        ace-jump-config
        helm-config
        neotree-config
        ui-config
        all-the-icons-config
        functions
        markdown-config
        projectile-config
        webmode-config
        rainbow-config
        rust-mode-config
        magit-config
        go-mode-config
        org-config
        yafolding-config))

(dolist (config-file config-files)
  (require config-file))

;; call functions config
(change-mode-line-color)
(disable-backup-files)
(run-theme-timer)

;; Other setup

;; Indentation
(setq-default tab-width 2)

(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)

;; Cua mode
;; C-c, C-x, C-v to copy, cut and paste
(cua-mode 1)

;; Disable auto insert utf-8 in ruby-mode
(setq ruby-insert-encoding-magic-comment nil)

;; Auto revert mode
(global-auto-revert-mode 1)

;; Show matching parenthesis
(setq show-paren-delay 0)
(show-paren-mode 1)

;; increase GC threshold
(setq gc-cons-threshold 80000000)
