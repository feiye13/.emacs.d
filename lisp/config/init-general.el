


(defun my/emacs-config ()
  "My Emacs config."
  (interactive)
  (find-file (expand-file-name "lisp/config/config.el" user-emacs-directory)))


(defun switch-to-scratch ()
  "Quick switch to `*Scratch*' buffer."
  (interactive)
  (switch-to-buffer "*scratch*"))




(provide 'init-general)
