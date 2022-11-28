;;; config.el --- config
;;; Commentary:

;;; Code:

(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'after-init-hook #'(lambda () (setq gc-cons-threshold 800000)))



(require 'init-basic)
(require 'init-ui)
(require 'init-font)
(require 'init-general)

(require 'lazy-load)
(require 'one-key)


(require 'init-auto-save)
(require 'init-vertico)
(require 'init-orderless)
(require 'init-marginalia)

(require 'init-meow)
(require 'init-key)

(require 'init-yasnippet)
(require 'init-lsp-bridge)
;;(require 'init-flymake)
(require 'init-web)
(require 'init-rust-mode)

(require 'init-org)
(require 'init-markdown)

(require 'init-eaf)
(require 'init-blink-search)
(require 'init-popweb)
(require 'init-sort-tab)


;; (require 'init-packages)
;; (require 'init-completion)
;; (require 'init-tools)





(provide 'config)

;;; config.el ends here
