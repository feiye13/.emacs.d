;;; init-orderless.el --- orderless
;;; Commentary:

;;; Code:


(require 'orderless)
(setq completion-styles '(orderless basic)
      completion-category-overrides '((file (styles basic partial-completion))))



(provide 'init-orderless)
;;; init-orderless.el ends here
