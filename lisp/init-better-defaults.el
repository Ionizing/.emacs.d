;; 设置启动屏幕显示最近打开文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; disable backup file
(setq make-backup-files nil)

(provide 'init-better-defaults)
