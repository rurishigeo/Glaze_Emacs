;;; init-dashboard.el --- Dashboard Configuration

;;; Commentary:
;;
;; Configure the dashboard for startup screen customization.
;;

;;; Code:

(use-package dashboard
  :demand t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 'logo) ;; Use logo as the startup banner
  (setq dashboard-init-info "Glaze Emacs") ;; Initial information displayed
  (setq dashboard-set-navigator t) ;; Enable dashboard navigator
  (setq dashboard-center-content t) ;; Center content in the dashboard
  (setq dashboard-items '((recents . 10)
                          (projects . 5)))) ;; Specify dashboard items

(provide 'init-dashboard)

;;; init-dashboard.el ends here
