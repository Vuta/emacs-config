;; Minimal UI
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)

;; Font
(set-frame-font "Jetbrains Mono 15" nil t)
(setq-default line-spacing 0.2)

(setq-default blink-cursor-mode nil)

;; Vertical border
;;(set-face-background 'vertical-border "gray")
;; (set-face-foreground 'vertical-border (face-background 'vertical-border))

;; Words wrap
;; (global-visual-line-mode f)

(provide 'ui-config)
