(require 'telega)
;; set proxy
(setq telega-proxies
      (list
       '(:server "127.0.0.1" :port 1081 :enable t
                 :type (:@type "proxyTypeSocks5"))
       ))

(provide 'init-telega)
