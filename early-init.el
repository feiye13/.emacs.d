;;; early-init.el --- Early initialization. -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(setq gc-cons-threshold most-positive-fixnum)
(setq gc-cons-percentage 0.6)

(setq package-enable-at-startup nil)

(prefer-coding-system 'utf-8)

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Set the scaling mode to avoid gaps after maximizing the window.
(setq frame-resize-pixelwise t)

;; Maximize the frame
(push '(fullscreen . maximized) initial-frame-alist)

(provide 'early-init)
;;; early-init.el ends here
