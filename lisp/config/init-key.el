


;; meow
(meow-leader-define-key
 '("," . meow-keypad-start))

(global-set-key (kbd "C-, C-m") 'meow-global-mode)


;; recentf
(global-set-key (kbd "C-x C-r") 'recentf-open-files)



;; blink-search
(global-set-key (kbd "C-, C-s") 'blink-search)

;; popweb
(global-set-key (kbd "C-, C-t y") 'popweb-dict-youdao-pointer)
(global-set-key (kbd "C-, C-t Y") 'popweb-dict-youdao-input)
(global-set-key (kbd "C-, C-t b") 'popweb-dict-bing-pointer)
(global-set-key (kbd "C-, C-t B") 'popweb-dict-bing-input)

;; EAF
(global-set-key (kbd "C-, C-e o") 'eaf-open)
(global-set-key (kbd "C-, C-e g") 'eaf-open-git)
(global-set-key (kbd "C-, C-e b") 'eaf-open-browser)
(global-set-key (kbd "C-, C-e s") 'eaf-search-it)

;;
(global-set-key (kbd "s-.") 'sort-tab-select-next-tab)
(global-set-key (kbd "s-,") 'sort-tab-select-prev-tab)



(provide 'init-key)
