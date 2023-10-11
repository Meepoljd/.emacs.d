;; 主题设置
(use-package doom-themes
  :ensure t)
(load-theme 'doom-one 1)


(use-package doom-modeline
  :init
;;  :custom-face
;;  (mode-line ((t (:height 0.9))))
  ;;(mode-line-inactive ((t (:height 0.9))))
   (doom-modeline-mode t))

(use-package simple
  :ensure nil
  :hook (after-init . size-indication-mode)
  :init
  (progn
    (setq column-number-mode t)
    ))

(provide 'editor-theme)
