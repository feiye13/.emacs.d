;;; init-dev.el --- Development Configuration -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package corfu
  :hook
  ((prog-mode . corfu-mode)
   (shell-mode . corfu-mode)
   (eshell-mode . corfu-mode))
  :init
  (global-corfu-mode)
  :custom
  (corfu-cycle t)
  (corfu-auto t)
  (corfu-auto-delay 0.1)
  (corfu-auto-prefix 2))

(use-package eglot
  :hook
  (prog-mode . eglot-ensure)
  :bind
  ("C-c l f" . eglot-format))


(provide 'init-dev)
;;; init-dev.el ends here
