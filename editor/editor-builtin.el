;; 编辑器内置功能配置

(global-display-line-numbers-mode 1) ;; 开启全局行号
(setq tab-always-indent 'complete) ;; 开启Tab补全
(tool-bar-mode -1) ;; 关闭工具栏
(scroll-bar-mode -1) ;; 关闭滑动组件
(setq inhibit-startup-screen t) ;; 跳过欢迎界面
(electric-pair-mode t) ;; 括号自动配对
(setq-default cursor-type '(bar . 5))  ;; setq 是生效在当前buffer的，全局设置需要用到 setq-default
(show-paren-mode t);; 显示括号匹配
(setq make-backup-files nil) ;; 关闭备份文件
(delete-selection-mode t) ;; 编辑选择内容时，删除它
(global-hl-line-mode 1);; 当前行高亮

(provide 'editor-builtin)
