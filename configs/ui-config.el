;; Minimal UI
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)

;; Font
(set-frame-font "Monaco 14" nil t)

;; Vertical border
(set-face-background 'vertical-border "gray")
(set-face-foreground 'vertical-border (face-background 'vertical-border))

;; Words wrap
(global-visual-line-mode t)

(provide 'ui-config)
