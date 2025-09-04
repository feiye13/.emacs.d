;;; init-package.el --- package -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(require 'package)
(require 'use-package)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(setq use-package-always-ensure t)

(provide 'init-package)
;;; init-package.el ends here
