;;; init-program.el --- Programming Configuration

;;; Commentary:
;;
;; Configure programming-related packages and tools.
;;

;;; Code:

;; projectile: Project interaction library
(use-package projectile
  :config
  (projectile-mode +1))

;; eglot: Client for Language Server Protocol (LSP)
(use-package eglot
  :hook (rust-ts-mode . eglot-ensure))

;; flymake: On-the-fly syntax checking
(use-package flymake
  :hook (prog-mode . flymake-mode)
  :bind (("M-n" . #'flymake-goto-next-error)
         ("M-p" . #'flymake-goto-prev-error)))

;; treesit-auto: Incremental parsing and syntax highlighting
(use-package treesit-auto
  :demand t
  :config
  (setq treesit-font-lock-level 4) ;; Set font-lock level for treesit
  (setq treesit-auto-install 'prompt) ;; Set auto-installation to prompt
  (global-treesit-auto-mode)) ;; Enable global treesit-auto mode

(provide 'init-program)

;;; init-program.el ends here
