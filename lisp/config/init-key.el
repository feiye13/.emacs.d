;;; init-key.el --- key
;;; Commentary:

;;; Code:




;;; Meow
(lazy-load-global-keys
 '(
   ("C-, m" . meow-global-mode)
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
   ("C-c f" . one-key-menu-files)   ;打开文件菜单
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
   ("C-c b" . one-key-menu-buffer)
   ("s-q" . kill-current-buffer)
   ))



;;; Blink-search
(global-set-key (kbd "C-c s") 'blink-search)



;;; Popweb
(one-key-create-menu
 "POPWEB"
 '(
   (("y" . "youdao pointer") . popweb-dict-youdao-pointer)
   (("y" . "youdao input") . popweb-dict-youdao-input)
   (("b" . "bing pointer") . popweb-dict-bing-pointer)
   (("y" . "bing input") . popweb-dict-bing-input)
   )
 t)

(lazy-load-global-keys
 '(
   ("C-c t" . one-key-menu-popweb)
   )
 "init-popweb")



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



;;;
(lazy-load-global-keys
 '(
   ("M-n" . lsp-bridge-diagnostic-jump-next)
   ("M-p" . lsp-bridge-diagnostic-jump-prev)
   )
 "init-lsp-bridge")


(provide 'init-key)
;;; init-key.el ends here
