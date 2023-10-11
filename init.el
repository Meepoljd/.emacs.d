;; -*- lexical-binding: t -*-

;; 自用Emacs配置不再使用Spacemacs等大型的集成配置，大型配置的学习成本高，且没有办法养成自己的习惯
;; 转移笔记软件，GTD工具，邮箱管理等内容，实现日常工具的All in One


;; 引入模块
(add-to-list 'load-path "~/.emacs.d/editor/")
(add-to-list 'load-path "~/.emacs.d/develop/")
;; End




;; 国内替换清华源
(require 'package) ;; import package 
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; init archives changes
;; End

;; require
(require 'editor-builtin)

;; 三个常用的查找
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; 一些美化
(global-hl-line-mode 1);; 当前行高亮

;; 主题设置
(use-package doom-themes
  :ensure t)
(load-theme 'doom-one 1)


;; (set-face-attribute 'default nil :height 140) ;; font size
;; End

;; keycast
(use-package keycast
  :ensure t)
(keycast-mode-line-mode t) ;; show what i have pressed
;; End

;; Minibuffer
(use-package vertico
  :ensure t)
(use-package orderless
  :ensure t)
(use-package marginalia
  :ensure t)
(vertico-mode t) ;; company in vec, better view and complete everthing in minibuffer
(setq completion-styles '(orderless)) ;; fuzz
(marginalia-mode t);; with explain
;; End


;; embark
 (use-package embark
   :ensure t)
(use-package embark-consult
  :ensure t)
 (global-set-key (kbd "C-;") 'embark-act) ;; tell me what can i do
 (setq prefix-help-command 'embark-prefix-help-command)
;; End

;; Better search
(use-package consult
  :ensure t)
(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "C-x b") 'consult-buffer) ;; 使用consult替换默认的buffer切换
;; End 

;; 补全配置
(use-package company
  :ensure t)
(global-company-mode 1) ;; 开启Company全局补全
(setq company-prefix 1) ;; 开启补全的前缀长度
(setq company-idle-begin 0) ;; 开启补全的延迟
;; End

;; 分离custom部分
(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el"))
(load custom-file 'no-error 'no-message)
