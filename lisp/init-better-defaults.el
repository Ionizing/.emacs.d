;; 设置启动屏幕显示最近打开文件
(require 'recentf)
(require 'backup-each-save)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; disable backup file
;; (setq make-backup-files nil)
;; (setq backup-directory-alist '(("." . "~/.emacs-saves/")))
(setq backup-directory-alist
      `(("." . "~/.emacs-saves/")))

;; (setq backup-by-copying t
;;       backup-directory-alist '(("." . "~/.emacs-saves/"))
;;       delete-old-versions t
;;       kept-new-versions 6
;;       kept-old-versions 2
;;       version-control t)
;; (setq auto-save-file-name-transforms
;;       `((".*" "~/.emacs-saves/" t)))

;;
;; (setq auto-save-default nil)

(provide 'init-better-defaults)
