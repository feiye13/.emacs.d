;;; init-rust-mode.el --- rust-mode
;;; Commentary:

;;; Code:


(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))


(provide 'init-rust-mode)
;;; init-rust-mode.el ends here
