;;; init-company.el --- Company Mode Configuration

;;; Commentary:
;;
;; Configure company for auto-completion.
;;

;;; Code:

(use-package company
  :demand t
  :init (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1) ;; Minimum prefix length for auto-completion
  (setq company-idle-delay 0) ;; Delay before auto-completion
  (setq company-show-numbers t)) ;; Show numbers for options

(use-package company-box
  :demand t
  :if window-system
  :hook (company-mode . company-box-mode))

(use-package company-tabnine
  :demand t
  :init (add-to-list 'company-backends #'company-tabnine))

(provide 'init-company)

;;; init-company.el ends here
