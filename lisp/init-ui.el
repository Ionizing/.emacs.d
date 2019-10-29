;; 关闭工具栏， tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标样式
(setq curosr-type 'bar)

;; 关闭启动帮助动画
(setq inhibit-splash-screen 1)

;; 更改显示字体大小 16pt
(set-face-attribute 'default nil :height 160)

;; 启用自动括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 高亮当前行
(global-hl-line-mode 1)

;; 安装主题
(add-to-list 'my/packages 'monokai-theme)

;; 启动时加载主题
(load-theme 'monokai 1)


(provide 'init-ui)
