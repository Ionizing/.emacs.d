;;;; This is Ionizing's emacs configuration

(package-initialize)

(require 'org-install)
(require 'ob-tangle)
(require 'evil)

;; custom
(require 'custom)

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


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-nerd-commenter org-evil evil-org evil company hungry-delete swiper counsel smartparens js2-mode nodejs-repl exec-path-from-shell monokai-theme auctex-latexmk))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

