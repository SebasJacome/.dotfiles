(setq custom-file "~/.emacs.custom.el")
(add-to-list 'load-path "~/.emacs.local/")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(package-initialize)

(add-to-list 'default-frame-alist `(font . "Iosevka Subtle-20"))
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(ido-mode 1)
(ido-everywhere 1)
(global-display-line-numbers-mode)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "M-x") 'smex)
(setq split-width-threshold nil)
(setq split-height-threshold 0)
(setq vc-follow-symlinks nil)
(setq create-lockfiles nil)
(setq make-backup-files nil) ;; do not make backup file
(with-eval-after-load 'lsp-mode
  (setq lsp-headerline-breadcrumb-enable nil))
(global-eldoc-mode -1)
(with-eval-after-load 'lsp-mode
  (setq lsp-eldoc-enable-hover nil))



(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l") ;; Optional keybinding prefix
  :hook
  ((simpc-mode c-mode c++-mode python-mode typescript-mode go-mode rust-mode) . lsp-deferred) ;; Add your desired major modes
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)


(load-file custom-file)
