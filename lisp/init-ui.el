;;; init-ui.el --- ui -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; Cursor
(blink-cursor-mode -1) ;; 关闭光标闪动
(setq-default cursor-type 'box)

(add-hook 'after-init-hook 'global-display-line-numbers-mode) ;; 显示行号
(add-hook 'after-init-hook 'global-hl-line-mode) ;; 高亮光标所在行


;; Font
(when window-system
    (set-frame-font (font-spec :family "LXGW WenKai Mono Medium" :size 22))
    (dolist (script '(han cjk-misc bopomofo))
        (set-fontset-font 
            (frame-parameter nil 'font) 
            script
            (font-spec :name "LXGW WenKai Mono Medium" :size 22))))

(load-theme 'modus-operandi)

(provide 'init-ui)
;;; init-ui.el ends here
