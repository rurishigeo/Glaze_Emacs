;;; init-const.el --- Constants for Emacs Configuration

;;; Commentary:
;;
;; Define constants for system types.
;;

;;; Code:

(defconst *is-mac* (eq system-type 'darwin)
  "Non-nil if running on macOS.")

(defconst *is-linux* (eq system-type 'gnu/linux)
  "Non-nil if running on GNU/Linux.")

(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt))
  "Non-nil if running on Windows.")

(provide 'init-const)

;;; init-const.el ends here
