;; Change mode line color
(defun change-mode-line-color ()
  (eval-when-compile (require 'cl))
  (lexical-let ((default-color (cons (face-background 'mode-line)
                                   (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
    (lambda ()
      (let ((color (cond ((minibufferp) default-color)
                         ((evil-insert-state-p) '("#a7c48d"))
                         ((evil-emacs-state-p)  '("#006fa0" . "#ffffff"))
                         ((buffer-modified-p)   '("#d2a87d" . "#ffffff"))
                         (t default-color))))
        (set-face-background 'mode-line (car color))
        (set-face-foreground 'mode-line (cdr color))))))) 

;; Disable backup files
(defun disable-backup-files ()
  (setq make-backup-files nil) ; stop creating backup~ files
  (setq auto-save-default nil)) ; stop creating #autosave# file

;; theme changer
;; Run a function every 1 hour and check whether it's day or night time to toggle between light and dark theme
(defun time-change ()
  (lambda ()
    (setq hour (nth 2 (decode-time (current-time))))
    (cond ((and (> hour 5) (< hour 11))
            (load-theme 'gruvbox-dark-medium t))
          ((and (>= hour 11) (<= hour 16))
            (load-theme 'one-dark t))
          ((and (>= hour 17) (<= hour 21))
            (load-theme 'doom-city-lights t))
          (t (load-theme 'doom-vibrant t)))))

(defun run-theme-timer ()
  (run-with-timer 0 3600 (time-change)))
;;

(provide 'functions)
