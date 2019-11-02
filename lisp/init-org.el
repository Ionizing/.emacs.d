(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; Run code within org-mode
;; 原文链接：https://blog.csdn.net/sinat_41104353/article/details/8464214

(org-babel-do-load-languages
      'org-babel-load-languages
      '((emacs-lisp . t)
        (C . t)
        (java . t)
        (js . t)
        (ruby . t)
        (ditaa . t)
        (python . t)
        (shell . t)
        (latex . t)
        (plantuml . t)
        (R . t)))

;; enable auto-complete in org-mode
;; (add-to-list 'ac-modes 'org-mode)
;; (ac-set-trigger-key "TAB")

;; get easy-templates back in org-mode
;; (require 'org-tempo)

(provide 'init-org)
