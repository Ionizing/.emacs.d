;; 设置启动屏幕显示最近打开文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; disable backup file
(setq make-backup-files nil)

;;
(setq auto-save-default nil)

(provide 'init-better-defaults)
