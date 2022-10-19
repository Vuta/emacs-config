;; Change mode line color
(setq evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
(setq evil-emacs-state-modes nil)
(defun change-mode-line-color ()
  (eval-when-compile (require 'cl))
  (lexical-let ((default-color (cons (face-background 'mode-line)
                                     (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
    (lambda ()
      (let ((color (cond ((minibufferp) '("#echace"))
                         ((evil-insert-state-p) '("#a7c48d"))
                         ((evil-emacs-state-p)  '("#006fa0" . "#ffffff"))
                         ((buffer-modified-p)   '("#d2a87d" . "#ffffff"))
                         ((evil-normal-state-p) '("#d5eef0"))
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
    (cond ((and (> hour 6) (< hour 19))
            (load-theme 'gruvbox-light-soft t))
          (t (load-theme 'gruvbox-dark-soft t)))))

(defun run-theme-timer ()
  (run-with-timer 0 3600 (time-change)))
;;

(provide 'functions)
