;;; config.el --- config
;;; Commentary:

;;; Code:


(let (;; temporarily increase `gc-cons-threshold' when loading to speed up startup.
      (gc-cons-threshold most-positive-fixnum)
      ;; Empty to avoid analyzing files when loading remote files.
      (file-name-handler-alist nil))



(require 'init-basic)
(require 'init-ui)
(require 'init-font)
(require 'init-general)

(require 'lazy-load)
(require 'one-key)


(require 'init-auto-save)
(require 'init-fingertip)

(require 'init-vertico)
(require 'init-orderless)
(require 'init-marginalia)

(require 'init-meow)
(require 'init-key)

(require 'init-yasnippet)
(require 'init-lsp-bridge)
(require 'init-web)
(require 'init-rust-mode)
(require 'init-treesit)

(require 'init-editing-utils)
(require 'init-org)
(require 'init-markdown)

(require 'init-eaf)
(require 'init-blink-search)
(require 'init-popweb)
(require 'init-sort-tab)
(require 'init-insert-translated-name)
(require 'init-awesome-tray)


)



(provide 'config)

;;; config.el ends here
