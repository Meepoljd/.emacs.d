;; 三个常用的查找
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; embark
(global-set-key (kbd "C-;") 'embark-act) ;; tell me what can i do

;; consult
(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "C-x b") 'consult-buffer) ;; 使用consult替换默认的buffer切换

(provide 'editor-key)
