;;; init-awesome-tray.el --- awesome-tray
;;; Commentary:

;;; Code:

(require 'awesome-tray)

(awesome-tray-mode 1)
(add-to-list 'awesome-tray-active-modules "last-command")
(add-to-list 'awesome-tray-active-modules "meow")

(provide 'init-awesome-tray)

;;; init-awesome-tray.el ends here
