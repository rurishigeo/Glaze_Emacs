;;; init-package.el --- Package Management Configuration

;;; Commentary:
;;
;; Configure package management using use-package.
;;

;;; Code:

(use-package package
  :config
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (unless (bound-and-true-p package--initialized)
    (package-initialize)))

;; use-package automatic installation and lazy loading
(require 'use-package-ensure)
(setq use-package-always-ensure t)
(setq use-package-always-defer t)

;; Automatic package updates
(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t) ;; Delete old versions during update
  (setq auto-package-update-hide-results t) ;; Hide update results in the echo area
  (auto-package-update-maybe)) ;; Automatically update packages on startup

(provide 'init-package)

;;; init-package.el ends here
