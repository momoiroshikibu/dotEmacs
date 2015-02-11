;; http://d.hatena.ne.jp/CortYuming/20130225/p1

;; slime
;; (require 'slime)
;; (setq inferior-lisp-program "/usr/local/bin/clisp")
;; (add-hook 'lisp-mode-hook
;;           (lambda ()
;;             (slime-mode t)
;;             (define-key lisp-mode-map (kbd "C-c C-s") 'slime)
;;             ))

;; (require 'ac-slime)
;; (add-hook 'slime-mode-hook 'set-up-slime-ac)
;; (add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
;; (add-hook 'comint-mode-hook
;;           (lambda ()
;;             (slime-mode t)
;;             (auto-complete-mode t)
;;             ))
