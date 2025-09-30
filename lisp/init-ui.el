;;; init-ui.el --- ui -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; Cursor
(blink-cursor-mode -1) ;; 关闭光标闪动

(global-display-line-numbers-mode t) ;; 显示行号
(global-hl-line-mode t) ;; 高亮光标所在行


;; Font
(add-hook 'emacs-startup-hook
          (lambda ()
            (custom-set-faces
             '(default ((t (:family "LXGW WenKai Mono" :height 160 :weight Medium))))
             )))

(when (daemonp) (load-theme 'modus-operandi-tinted))
(when (display-graphic-p) (load-theme 'modus-operandi-tinted))

(provide 'init-ui)
;;; init-ui.el ends here
