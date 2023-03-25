;;; init-key.el --- key
;;; Commentary:

;;; Code:




;;; Meow
;; (lazy-load-global-keys
;;  '(
;;    ("C-." . meow-global-mode)
;;    )
;;  "meow")

(meow-define-keys
    'insert
  '("C-;" . meow-insert-exit))

(meow-leader-define-key
 '("," . meow-keypad-start))



;;; Files
(one-key-create-menu
 "FILES"
 '(
   (("f" . "Find file") . find-file)
   (("r" . "Recent") . recentf-open-files)
   (("i" . "Emacs Configuration") . my/emacs-config))
 t)

(lazy-load-set-keys
 '(
   ("s-f" . one-key-menu-files)   ;打开文件菜单
   ))



;;; Buffer
(one-key-create-menu
 "BUFFER"
 '((("b" . "Buffer") . switch-to-buffer)
   (("s" . "Scratch") . switch-to-scratch)
   (("e" . "Eval") . eval-buffer))
 t)

(lazy-load-set-keys
 '(
   ("C-, b" . one-key-menu-buffer)
   ("s-q" . kill-current-buffer)
   ))



;;; Blink-search
;;; blink 搜索插件
(lazy-load-global-keys
 '(
   ("s-s" . blink-search)
   )
 "init-blink-search")



;;; Popweb
;;; 翻译
(lazy-load-global-keys
 '(
   ("y" . popweb-dict-youdao-pointer)
   ("Y" . popweb-dict-youdao-input)
   ("b" . popweb-dict-bing-pointer)
   ("B" . popweb-dict-bing-input)
   )
 "init-popweb"
 "s-t")



;;; Insert-translated-name
;;; 写的中文变量或函数名翻译成英文
(lazy-load-global-keys
 '(
   ("i" . insert-translated-name-insert)
   ("I" . insert-translated-name-insert-with-camel)
   ("-" . insert-translated-name-insert-with-underline)
   )
 "init-insert-translated-name"
 "s-t")



;;; EAF
(one-key-create-menu
 "EAF"
 '(
   (("o" . "EAF open") . eaf-open)
   (("b" . "EAF browser") . eaf-open-browser)
   (("f" . "EAF file manager") . eaf-open-file-manager)
   (("g" . "EAF git") . eaf-open-git)
   (("t" . "EAF terminal") . eaf-open-terminal)
   (("s" . "EAF search") . eaf-search-it)
   )
 t)

(lazy-load-global-keys
 '(
   ("C-c e" . one-key-menu-eaf)   
   )
 "init-eaf")



;;; Git
(one-key-create-menu
 "Git"
 '(
   (("s" . "Git status") . eaf-open-git)
   (("u" . "Git push to remote") . eaf-git-push)
   (("p" . "Git pull") . eaf-git-pull)
   (("c" . "Git clone") . eaf-git-clone)
   (("h" . "Git history") . eaf-git-show-history))
 t)

(lazy-load-global-keys
 '(
   ("C-c g" . one-key-menu-git)
   )
 "init-eaf")



;;; Sort-tab
(lazy-load-global-keys
 '(
   ("s-0" . sort-tab-select-next-tab)
   ("s-9" . sort-tab-select-prev-tab)
   )
 "sort-tab")



;;; lsp-bridge
(lazy-load-global-keys
 '(
   ("M-n" . lsp-bridge-diagnostic-jump-next) ;显示下一个错误
   ("M-p" . lsp-bridge-diagnostic-jump-prev) ;显示上一个错误
   )
 "init-lsp-bridge")

(lazy-load-global-keys
 '(
   ("h" . lsp-bridge-toggle-sdcv-helper) ;英文助手
   )
 "init-lsp-bridge"
 "s-t")



;;; ### Fingertip ###
;;; --- 结构化编程
(lazy-load-unset-keys
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b" "M-)")
 fingertip-mode-map)                    ;卸载按键
(defvar fingertip-key-alist nil)
(setq fingertip-key-alist
      '(
        ;; 移动
        ("M-n" . fingertip-jump-left)
        ("M-p" . fingertip-jump-right)
        ;; 符号插入
        ("%" . fingertip-match-paren)       ;括号跳转
        ("(" . fingertip-open-round)        ;智能 (
        ("[" . fingertip-open-bracket)      ;智能 [
        ("{" . fingertip-open-curly)        ;智能 {
        (")" . fingertip-close-round)       ;智能 )
        ("]" . fingertip-close-bracket)     ;智能 ]
        ("}" . fingertip-close-curly)       ;智能 }
        ("\"" . fingertip-double-quote)     ;智能 "
        ("'" . fingertip-single-quote)      ;智能 '
        ("=" . fingertip-equal)             ;智能 =
        ("SPC" . fingertip-space)           ;智能 space
        ("RET" . fingertip-newline)         ;智能 newline
        ;; 删除
        ("M-o" . fingertip-backward-delete) ;向后删除
        ("C-d" . fingertip-forward-delete)  ;向前删除
        ("C-k" . fingertip-kill)            ;向前 kill
        ;; 包围
        ("M-\"" . fingertip-wrap-double-quote) ;用 " " 包围对象, 或跳出字符串
        ("M-'" . fingertip-wrap-single-quote) ;用 ' ' 包围对象, 或跳出字符串
        ("M-[" . fingertip-wrap-bracket)      ;用 [ ] 包围对象
        ("M-{" . fingertip-wrap-curly)        ;用 { } 包围对象
        ("M-(" . fingertip-wrap-round)        ;用 ( ) 包围对象
        ("M-)" . fingertip-unwrap)            ;去掉包围对象
        ;; 跳出并换行缩进
        ("M-:" . fingertip-jump-out-pair-and-newline) ;跳出括号并换行
        ;; 向父节点跳动
        ("C-j" . fingertip-jump-up)
        ))
(lazy-load-set-keys fingertip-key-alist fingertip-mode-map)



(provide 'init-key)
;;; init-key.el ends here
