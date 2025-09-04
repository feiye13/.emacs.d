;;; init-base.el --- base -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; 增加长行处理性能
(setq bidi-inhibit-bpa t)
(setq-default bidi-paragraph-direction 'left-to-right)

;; 增加 IO 性能
(setq process-adaptive-read-buffering nil)
(setq read-process-output-max (* 1024 1024))

(setq make-backup-files nil)
(setq auto-save-default nil) ; 关闭自动保存，不会生成以 '~' 结尾的文件

(setq-default indent-tabs-mode nil) ; only use spaces instead of TAB, use C-q TAB to input the TAB char
(setq-default tab-width 4) ; make tab-width always 4

(setq inhibit-startup-screen t)
(setq use-short-answers t) ; 用 y/n 代替 yes/no
(setq mouse-yank-at-point t) ; 粘贴于光标处,而不是鼠标指针处
(setq x-select-enable-clipboard t) ; 支持 emacs 和外部程序的粘贴
(setq inhibit-compacting-font-caches t) ; 使用字体缓存，避免卡顿
(setq confirm-kill-processes nil) ; 退出自动杀掉进程
(setq word-wrap-by-category t) ;按照中文折行

(add-hook 'after-init-hook 'save-place-mode) ; 保存光标位置
(add-hook 'after-init-hook 'delete-selection-mode) ; 输入字符替换选中的文本
(add-hook 'after-init-hook 'global-auto-revert-mode) ; 读取文件在 Emacs 外的修改
(add-hook 'after-init-hook 'recentf-mode)
(add-hook 'after-init-hook 'auto-save-visited-mode)

(add-hook 'prog-mode-hook 'electric-pair-mode) ; 括号补全
(add-hook 'prog-mode-hook 'show-paren-mode) ; 括号匹配提示

(provide 'init-base)
;;; init-base.el ends here
