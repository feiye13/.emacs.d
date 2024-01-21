;;; init-eaf.el --- eaf
;;; Commentary:

;;; Code:


(require 'eaf)

(require 'eaf-browser)
(require 'eaf-music-player)
(require 'eaf-markdown-previewer)
(require 'eaf-map)
(require 'eaf-pdf-viewer)
(require 'eaf-video-player)
(require 'eaf-rss-reader)
(require 'eaf-js-video-player)
(require 'eaf-file-manager)
(require 'eaf-org-previewer)
(require 'eaf-git)
(require 'eaf-system-monitor)
(require 'eaf-pyqterminal)
(require 'eaf-image-viewer)


(setq eaf-terminal-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-terminal-font-size 22)

(setq eaf-webengine-default-zoom 1.2)
(setq eaf-webengine-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-webengine-fixed-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-webengine-serif-font-family "LXGW WenKai Mono")
(setq eaf-webengine-font-size 22)
(setq eaf-webengine-fixed-font-size 22)
(setq eaf-browser-enable-adblocker t)

(setq eaf-file-manager-show-hidden-file nil)

(setq eaf-pyqterminal-font-family "LXGW WenKai Mono")
(setq eaf-pyqterminal-font-size 24)

(provide 'init-eaf)
;;; init-eaf.el ends here
