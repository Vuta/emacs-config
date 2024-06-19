(use-package org)

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(setq org-agenda-files '("~/org/"))
(setq org-default-notes-file "~/org/notes.org")

(setq org-capture-templates
      '(("t" "todo" entry (file "~/org/tasks.org")
         "* TODO %?\n  %i")
        ("n" "note" entry (file "~/org/notes.org")
         "* %?\n  %i")))

(setq org-log-done 'time)
(setq org-todo-keywords '((sequence "TODO" "NEXT" "DONE")))
(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold))))

(use-package idle-org-agenda
  :after org-agenda
  :ensure t
  :config (idle-org-agenda-mode 1))

(custom-set-variables
 '(idle-org-agenda-interval 600)
 '(idle-org-agenda-key "n"))

(provide 'org-config)
