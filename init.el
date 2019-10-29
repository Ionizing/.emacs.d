;;;; This is Ionizing's emacs configuration

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
(require 'init-packages)

;; Keybindings
(require 'init-keybindings)

;; UI
(require 'init-ui)

;; org-mode
(require 'init-org)

;; better-defaults
(require 'init-better-defaults)

;; custom
(require 'custom)
