;;; init-startup.el --- Startup Configuration

;;; Commentary:
;;
;; Configure startup settings and appearance.
;;

;;; Code:

;; Set default encoding to UTF-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; Set garbage collection threshold to a high value
(setq gc-cons-threshold most-positive-fixnum)

;; Disable backup file creation
(setq make-backup-files nil)

;; Disable scroll bar
(scroll-bar-mode -1)

;; Disable tool bar
(tool-bar-mode -1)

;; Disable menu bar
(menu-bar-mode -1)

;; Enable automatic pairing of brackets
(electric-pair-mode 1)
(setq electric-pair-pairs '((?\" . ?\")
                            (?\{ . ?\})
                            (?\' . ?\')))

;; Shorten yes-or-no-p to y-or-n-p
(defalias 'yes-or-no-p 'y-or-n-p)

;; Use relative line numbers
(setq display-line-numbers-type t)

;; Enable highlighting of the current line
(setq global-hl-line-mode t)

;; Enable display-line-numbers globally
(global-display-line-numbers-mode t)

;; Inhibit the startup screen
(setq inhibit-startup-screen t)

;; Inhibit the startup message
(setq inhibit-startup-message t)

;; Fontify source code blocks in org-mode
(setq org-src-fontify-natively t)

;; Enable global-auto-revert-mode
(setq global-auto-revert-mode t)

;; Enable delete-selection-mode
(setq delete-selection-mode t)

(provide 'init-startup)

;;; init-startup.el ends here
