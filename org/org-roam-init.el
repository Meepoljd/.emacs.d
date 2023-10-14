(use-package org-roam)
;; (use-package org-roam-server)

(setq org-roam-directory "~/MyNotes/")
(add-hook 'after-init-hook 'org-roam-mode) ;; 自动启动roam

(provide 'org-roam-init)
