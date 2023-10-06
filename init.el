;; 自用Emacs配置不再使用Spacemacs等大型的集成配置，大型配置的学习成本高，且没有办法养成自己的习惯
;; 转移笔记软件，GTD工具，邮箱管理等内容，实现日常工具的All in One

;; 编辑器配置
(global-display-line-numbers-mode 1) ;; 开启全局行号
(setq tab-always-indent 'complete) ;; 开启Tab补全
(tool-bar-mode -1) ;; 关闭工具栏

(scroll-bar-mode -1) ;; 关闭滑动组件
(setq inhibit-startup-screen t) ;; 跳过欢迎界面
(icomplete-mode t) ;; 调整补全模式
(electric-pair-mode t) ;; 括号自动配对
;; End

;; 国内替换清华源
(require 'package)
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line
;; End

;; 补全配置
(require 'company)
(global-company-mode 1) ;; 开启Company全局补全
(setq company-prefix 1) ;; 开启补全的前缀长度
(setq company-idle-begin 0) ;; 开启补全的延迟
;; End
