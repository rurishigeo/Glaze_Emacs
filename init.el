;;; init.el --- Main Emacs Configuration

;;; Commentary:
;;
;;    ||||| ||     ||   ||||||| |||||    ||||| ||    |||   ||     ||||   ||||
;;  ||||||| ||    ||||  ||||||| |||||    ||||| |||   |||  ||||   |||||  |||||
;; |||      ||    ||||      ||  ||       ||    |||  ||||  ||||  |||     ||
;; ||       ||    | ||     ||   |||||    ||||| | || ||||  | ||  ||      ||||
;; ||  |||| ||   ||  ||   ||    |||||    ||||| | || | || ||  || ||       ||||
;; |||   || ||   ||||||  ||     ||       ||    |  | | || |||||| |||        ||
;;  ||||||| |||| |||||| ||||||| |||||    ||||| |  ||| || ||||||  |||||  |||||
;;   |||||| ||||||    ||||||||| |||||    ||||| |   |  ||||    ||  ||||  ||||
;;
;; This is the main configuration file for Glaze Emacs.

;;; Code:

;; Add the configuration folder to the load path
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp")))

;; Initialize basic settings
(require 'init-const)     ; Define constants for system types
(require 'init-startup)   ; Configure startup settings and appearance

;; Plugin configurations
(require 'init-package)   ; Configure package management using use-package
(require 'init-plugin)    ; Configure various plugins and their key bindings

;; Programming configurations
(require 'init-company)   ; Configure company for auto-completion
(require 'init-program)   ; Configure programming-related packages and tools

;; GUI configurations
(require 'init-theme)     ; Configure the appearance and themes
(require 'init-dashboard) ; Configure the dashboard for startup screen customization

;; User-specific custom configurations
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

;;; init.el ends here
