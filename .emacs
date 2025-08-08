

(setq custom-file "~/.emacs.custom.el")
(add-to-list 'load-path "~/.emacs.local/")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Use simpc-mode for C files
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

;; Use js2-mode for JavaScript files
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Use ts-mode for TS files
(require 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.\\(m\\|c\\)?ts\\'" . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.mts\\'" . typescript-mode))
;;(add-hook 'typescript-mode-hook #'lsp)
;;(add-hook 'typescript-ts-mode-hook #'lsp)

(xclip-mode 1) ;; Link kill-ring and clipboard

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
(setq create-lockfiles nil) ;; eliminate garbage file creation
(setq make-backup-files nil) ;; do not make backup file
(with-eval-after-load 'lsp-mode
  (setq lsp-headerline-breadcrumb-enable nil)) ;; Eliminates breadcrumbs on top of the program

;;(with-eval-after-load 'lsp-mode
;;  (setq lsp-eldoc-enable-hover nil))
(setq lsp-signature-auto-activate nil)

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l") ;; Optional keybinding prefix
  :hook
  ((simpc-mode c-mode c++-mode python-mode typescript-mode go-mode rust-mode) . lsp-deferred) ;; Add your desired major modes
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode) ;; Jump to definition of functions

(load-file custom-file)
(move-text-default-bindings)

; Configuring the lsp for simp-c mode
(add-hook 'simpc-mode-hook #'lsp)
(with-eval-after-load 'lsp-mode
  (add-to-list 'lsp-language-id-configuration '(simpc-mode . "c"))
  (lsp-register-client
   (make-lsp-client
    :new-connection (lsp-stdio-connection "clangd")
    :major-modes '(simpc-mode)
    :server-id 'clangd)))

(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)
