;;;; This is Ionizing's emacs configuration

(package-initialize)

(require 'org-install)
(require 'ob-tangle)

;; (org-babel-load-file (expand-file-name "org-file-name.org" user-emacs-directory))

(add-to-list 'load-path "~/.emacs.d/lisp/")
;; Keybindings
(require 'init-keybindings)

;; Package Management
(require 'init-packages)

;; UI
(require 'init-ui)

;; org-mode
(require 'init-org)

;; better-defaults
(require 'init-better-defaults)

;; evil mode
(require 'mycustom)

;; telegra
(require 'init-telega)

;; julia-mode
(require 'julia-mode)

;; rust-mode
(require 'rust-mode)
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

(elpy-enable)

(setq TeX-auto-untabify 't)
(setq org-latex-listings t)
(require 'ox-latex)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elpy pyenv-mode backup-each-save ox-latex-subfigure cuda-mode rust-mode telega treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil lsp-treemacs evil-nerd-commenter org-evil evil-org evil company hungry-delete swiper counsel smartparens js2-mode nodejs-repl exec-path-from-shell monokai-theme auctex-latexmk)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

