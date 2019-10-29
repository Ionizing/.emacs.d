;; I do not use Emacs without following settings!!!
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "C-'") 'help-command)
(define-key isearch-mode-map "\C-h" 'isearch-delete-char)
(global-set-key [?\S- ] 'set-mark-command)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <F2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)


(provide 'init-keybindings)
