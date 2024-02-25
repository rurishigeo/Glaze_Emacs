;;; early-init.el --- Early Initialization for Emacs

;;; Commentary:
;;
;; Early configuration settings to be executed before package loading.
;;

;;; Code:

;; Ensure Emacs version is greater than or equal to 29
(unless (>= emacs-major-version 29)
  (error "ONLY EMACS v29+ IS SUPPORTED!"))

;; Adjust garbage collection threshold
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'after-init-hook #'(lambda () (setq gc-cons-threshold 800000)))

;; Disable package loading at startup
(setq package-enable-at-startup nil)

;;; early-init.el ends here
