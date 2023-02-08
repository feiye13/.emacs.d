;;; init-key.el --- key
;;; Commentary:

;;; Code:




;;; Meow
(lazy-load-global-keys
 '(
   ("C-," . meow-global-mode)
   )
 "meow")

(meow-define-keys
    'insert
  '("C-;" . meow-insert-exit))


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
   ("s-c f" . one-key-menu-files)   ;打开文件菜单
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
   ("s-c b" . one-key-menu-buffer)
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



(provide 'init-key)
;;; init-key.el ends here
