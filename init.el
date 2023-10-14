;; -*- lexical-binding: t -*-

;; 自用Emacs配置不再使用Spacemacs等大型的集成配置，大型配置的学习成本高，且没有办法养成自己的习惯
;; 转移笔记软件，GTD工具，邮箱管理等内容，实现日常工具的All in One


;; 引入模块
(add-to-list 'load-path "~/.emacs.d/editor/")
(add-to-list 'load-path "~/.emacs.d/develop/")
(add-to-list 'load-path "~/.emacs.d/org")
;; End

;; 国内替换清华源
(require 'package) ;; import package 
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; init archives changes

(when (not package-archive-contents)
  (package-refresh-contents))
;; End

;; 安装use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t) ;; 开启默认自动安装

;; require
(require 'editor-builtin)
(require 'editor-theme)
(require 'editor-package)
(require 'editor-key)

(require 'org-init)
(require 'org-roam-init)
;; (require 'org-hugo)


(require 'dev-go)

;; 分离custom部分
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'no-error 'no-message)
