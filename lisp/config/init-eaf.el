;;; init-eaf.el --- eaf
;;; Commentary:

;;; Code:


(require 'eaf)

(require 'eaf-music-player)
(require 'eaf-browser)
(require 'eaf-terminal)
(require 'eaf-markdown-previewer)
(require 'eaf-rss-reader)
(require 'eaf-camera)
(require 'eaf-pdf-viewer)
(require 'eaf-file-sender)
(require 'eaf-video-player)
(require 'eaf-file-browser)
(require 'eaf-airshare)
(require 'eaf-org-previewer)
(require 'eaf-jupyter)
(require 'eaf-system-monitor)
(require 'eaf-git)
(require 'eaf-file-manager)
(require 'eaf-mindmap)
(require 'eaf-demo)
(require 'eaf-image-viewer)

;; eaf-terminal
(setq eaf-terminal-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-terminal-font-size 22)

;; eaf-browser
(setq eaf-webengine-default-zoom (if (> (frame-pixel-width) 3000) 2 1))
(setq eaf-webengine-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-webengine-fixed-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-webengine-serif-font-family "TsangerJinKai03")
(setq eaf-webengine-font-size 22)
(setq eaf-webengine-fixed-font-size 22)

(setq eaf-file-manager-show-hidden-file nil)


(provide 'init-eaf)
;;; init-eaf.el ends here
