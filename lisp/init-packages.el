 (when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives
	   '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
	     ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

 ;; cl - Common Lisp Extension
 (require 'cl)


 ;; Add Packages
 (defvar my/packages '(
		;; --- Auto-completion ---
		company
		company-ebdb
		company-math
		company-statistics

		ebdb

		auto-complete
		auto-complete-pcmp

		log4e
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; --- Major Mode ---
		js2-mode
		;; --- Minor Mode ---
		nodejs-repl
		exec-path-from-shell
		;; --- Themes ---
		monokai-theme
		;; solarized-theme

		math-symbol-lists

		;; org-mode
		org
		org-ac

		monitor
		goto-chg
		popup
		smartparens
		swiper
		ivy
		undo-tree
		yaxception
		ansi-color

		;; auctex
		auctex-latexmk
		auctex

		;; evil stuff
		evil
		evil-nerd-commenter
		evil-leader
		evil-org
		;; hippie-exp ;; built-in

		;; treemacs
		treemacs
		;; treemacs-magit
		treemacs-icons-dired
		treemacs-projectile
		treemacs-evil

		backup-each-save

		;; rust-mode
		rust-mode

		;; telegra.el
		telega

		;; python
		elpy
		pyenv-mode
		) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

 ;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-packages)
