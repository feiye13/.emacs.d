;;; init-general.el --- general
;;; Commentary:

;;; Code:



;;; Define function
(defun my/emacs-config ()
  "My Emacs config."
  (interactive)
  (find-file (expand-file-name "lisp/config/config.el" user-emacs-directory)))


(defun switch-to-scratch ()
  "Quick switch to `*Scratch*' buffer."
  (interactive)
  (switch-to-buffer "*scratch*"))



;;; Edited configuration
;; pangu-spacing
(require 'pangu-spacing)

(global-pangu-spacing-mode 1)
(setq pangu-spacing-real-insert-separtor t)



(provide 'init-general)
;;; init-general.el ends here
