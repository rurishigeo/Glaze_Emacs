;;; init-plugin.el --- Plugin Configurations

;;; Commentary:
;;
;; Configure various plugins and their key bindings.
;;

;;; Code:

;; crux: Additional Emacs utilities
(use-package crux
  :bind ("C-k" . crux-smart-kill-line))

;; hungry-delete: Delete multiple consecutive whitespace characters
(use-package hungry-delete
  :bind
  ("M-DEL" . hungry-delete-backward)
  ("M-d" . hungry-delete-forward))

;; drag-stuff: Drag text up or down
(use-package drag-stuff
  :bind
  ("<M-up>" . drag-stuff-up)
  ("<M-down>" . drag-stuff-down))

;; ace-window: Quickly switch between windows
(use-package ace-window
  :bind (("C-x o" . 'ace-window)))

;; which-key: Display available keybindings in a popup
(use-package which-key
  :hook (after-init . which-key-mode))

;; mwim: Move to the beginning or end of code or line
(use-package mwim
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

;; counsel and ivy: Enhanced completion and narrowing framework
(use-package counsel)

(use-package ivy
  :init
  (ivy-mode 1)
  (counsel-mode 1)
  :config
  (setq ivy-use-virtual-buffers t) ;; Enable virtual buffers
  (setq search-default-mode #'char-fold-to-regexp) ;; Enable char folding for searches
  (setq ivy-count-format "(%d/%d) ") ;; Display count information in ivy prompts
  :bind
  (("C-s" . 'swiper)
   ("C-x b" . 'ivy-switch-buffer)
   ("C-c v" . 'ivy-push-view)
   ("C-c s" . 'ivy-switch-view)
   ("C-c V" . 'ivy-pop-view)
   ("C-x C-@" . 'counsel-mark-ring)
   ("C-x C-SPC" . 'counsel-mark-ring)
   :map minibuffer-local-map
   ("C-r" . counsel-minibuffer-history)))

;; neotree: File tree explorer on the side
(use-package neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'ascii)) ;; Use ASCII theme if in graphical mode
  (setq neo-window-fixed-size nil) ;; Allow resizing of neotree window
  (setq neo-window-width 30) ;; Set the width of neotree window
  (setq neo-show-hidden-files t) ;; Show hidden files in neotree
  :bind
  ("C-x n" . neotree-toggle)
  ("C-x g" . neotree-find))

;; exec-path-from-shell: Ensure environment variables are correctly set
(use-package exec-path-from-shell
  :when (or (memq window-system '(mac ns x))
            (unless *is-windows*
              (daemonp)))
  :init (exec-path-from-shell-initialize))

;; undo-tree: Visualize and traverse the undo tree
(use-package undo-tree
  :init (global-undo-tree-mode)
  :custom
  (undo-tree-auto-save-history nil)) ;; Disable auto-saving of undo history

(provide 'init-plugin)

;;; init-plugin.el ends here
