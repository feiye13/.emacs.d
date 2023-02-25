;;; init-basic.el --- basic
;;; Commentary:

;;; Code:


;; 增加长行处理性能
(setq bidi-inhibit-bpa t)
(setq-default bidi-paragraph-direction 'left-to-right)

;; 增加 IO 性能
(setq process-adaptive-read-buffering nil)
(setq read-process-output-max (* 1024 1024))


(setq make-backup-files nil) ;; 
(setq auto-save-default nil) ;; 关闭自动保存，不会生成以 '~' 结尾的文件

(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p) ;; 以 y/n 代表 yes/no
;; (setq use-short-answers t) ;; 用 y/n 代替 yes/no
(electric-pair-mode t) ;; 括号补全
(show-paren-mode t) ;; 括号匹配提示
(blink-cursor-mode -1) ;; 关闭光标闪动
(delete-selection-mode 1) ;; 输入字符替换选中的文本
(setq-default indent-tabs-mode nil) ;; only use spaces instead of TAB, use C-q TAB to input the TAB char
(setq-default tab-width 4) ;; make tab-width always 4
(global-linum-mode 1) ;; 显示行号
(global-hl-line-mode 1) ;; 高亮光标所在行
;; (setq-default cursor-type '(bar . 2))
(global-auto-revert-mode 1) ;; 读取文件在 Emacs 外的修改
(setq mouse-yank-at-point t) ;; 粘贴于光标处,而不是鼠标指针处
(setq x-select-enable-clipboard t) ;; 支持 emacs 和外部程序的粘贴
(setq inhibit-compacting-font-caches t) ;; 使用字体缓存，避免卡顿
(setq frame-resize-pixelwise t) ;; 设置缩放的模式,避免 Mac 平台最大化窗口以后右边和下边有空隙(KDE 下也可避免空隙)
(save-place-mode 1) ;; 保存光标位置

(add-hook 'after-init-hook 'recentf-mode)
(setq recentf-max-saved-items 50)

(prefer-coding-system 'utf-8)


(provide 'init-basic)

;;; init-basic.el ends here
