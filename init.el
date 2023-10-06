;; -*- lexical-binding: t -*-

;; 自用Emacs配置不再使用Spacemacs等大型的集成配置，大型配置的学习成本高，且没有办法养成自己的习惯
;; 转移笔记软件，GTD工具，邮箱管理等内容，实现日常工具的All in One

;; 编辑器配置
(global-display-line-numbers-mode 1) ;; 开启全局行号
(setq tab-always-indent 'complete) ;; 开启Tab补全
(tool-bar-mode -1) ;; 关闭工具栏
(scroll-bar-mode -1) ;; 关闭滑动组件
(setq inhibit-startup-screen t) ;; 跳过欢迎界面
(electric-pair-mode t) ;; 括号自动配对
;; (set-face-attribute 'default nil :height 140) ;; font size

;; End

;; keycast
(keycast-mode-line-mode t) ;; show what i have pressed
;; End

;; Minibuffer
(vertico-mode t) ;; company in vec, better view and complete everthing in minibuffer
(setq completion-styles '(orderless)) ;; fuzz
(marginalia-mode t);; with explain
;; End


;; embark
;; (global-set-key (kbd "C-;") 'embark-act) ;; tell me what can i do
;; (setq prefix-help-command 'embark-prefix-help-command)
;; End

;; Better search
(global-set-key (kbd "C-s") 'consult-line)
;; End 


;; 国内替换清华源
(require 'package) ;; import package 
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; init archives changes
;; End

;; 补全配置
(global-company-mode 1) ;; 开启Company全局补全
(setq company-prefix 1) ;; 开启补全的前缀长度
(setq company-idle-begin 0) ;; 开启补全的延迟
;; End
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(consult embark marginalia orderless vertico keycast company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
