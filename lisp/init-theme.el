;;; init-theme.el --- Theme Configuration

;;; Commentary:
;;
;; Configure the appearance and themes.
;;

;;; Code:

(use-package emacs
  :if (display-graphic-p)
  :config
  (setq fonts (cond (*is-mac* '("Monaco"))
                    (*is-linux* '("Hack Nerd Font"))
                    (*is-windows* '("MicroSoft YaHei Mono")))))

(set-face-attribute 'default nil :font
                    (format "%s:pixelsize=%d" (car fonts) 22))

(use-package monokai-theme
  :init
  (load-theme 'monokai t))

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
        sml/theme 'respectful)
  (sml/setup))

(use-package rainbow-delimiters
  :hook
  (prog-mode . rainbow-delimiters-mode))

(provide 'init-theme)

;;; init-theme.el ends here
