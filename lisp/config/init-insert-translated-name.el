;;; init-insert-translated-name.el --- insert-translated-name
;;; Commentary:

;;; Code:

(require 'insert-translated-name)

(setq insert-translated-name-translate-engine "youdao")

(dolist (hook (list
               'markdown-mode-hook
               ))
  (add-hook hook #'(lambda ()
                     (require 'insert-translated-name)
                     (insert-translated-name-use-original-translation))))


(provide 'init-insert-translated-name)
;;; init-insert-translated-name.el ends here
