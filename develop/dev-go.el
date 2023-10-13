(use-package go-mode)

(setq gofmt-command "goimports");; format
(add-hook 'before-save-hook 'gofmt-before-save) ;; format after save
(add-hook 'go-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode 1)
	    (setq tab-width 4)))

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
	 (go-mode . lsp)
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  ）
)

(provide 'dev-go)
