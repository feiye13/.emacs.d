


;; meow
(meow-leader-define-key
 '("," . meow-keypad-start))

;; recentf
(global-set-key (kbd "C-x C-r") 'recentf-open-files)


;; snails
(global-set-key (kbd "C-, C-s") 'snails)

(provide 'init-key)
