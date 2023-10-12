;; Minibuffer 配置
(use-package vertico )
(vertico-mode t)
(use-package orderless )
(setq completion-styles '(orderless))
(use-package marginalia)
(marginalia-mode t)

(use-package recentf)
(setq recentf-max-menu-item 10) ;; 记忆10个最近文件

;; embark
(use-package embark)
(use-package embark-consult)
(setq prefix-help-command 'embark-prefix-help-command)
;; End

;; Better search
(use-package consult)
;; End 

;; 补全配置
(use-package company)
(global-company-mode 1) ;; 开启Company全局补全
(setq company-prefix 1) ;; 开启补全的前缀长度
(setq company-idle-begin 0) ;; 开启补全的延迟
;; End

(provide 'editor-package)
