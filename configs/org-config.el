;; Org
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-agenda-files (list "~/org/work.org"
                             "~/org/life.org"))
(setq org-log-done 'time)
(setq org-agenda-start-with-log-mode t)
(setq org-log-into-drawer t)
(setq org-todo-keywords '((sequence "TODO" "IN-PROGRESS" "DONE")))
(provide 'org-config)
