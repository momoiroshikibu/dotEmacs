;; http://d.hatena.ne.jp/CortYuming/20130225/p1

;; slime
(require 'slime)

(add-hook 'lisp-mode-hook
          (lambda ()
            (slime-mode t)
            (define-key lisp-mode-map (kbd "C-c C-s") 'slime)
            ))

;; roswell
;; https://github.com/roswell/roswell/wiki/1.1-Initial-Recommended-Setup#setting-up-emacs-and-slime
(load (expand-file-name "~/.roswell/lisp/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "ros -L sbcl -Q run")
;; (setq inferior-lisp-program "ros -L sbcl -Q -l ~/.sbclrc run")
;; (setq inferior-lisp-program "sbcl")

;; (setf slime-lisp-implementations
;;       `((sbcl    ("sbcl" "--dynamic-space-size" "2000"))
;;         (roswell ("ros" "dynamic-space-size=2000" "-Q" "-l" "~/.sbclrc" "run"))))
;; (setf slime-default-lisp 'roswell)








(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

(add-to-list 'ac-modes 'slime-repl-mode)
(add-to-list 'ac-modes 'lisp-mode)

(modify-syntax-entry ?\[ "(]" lisp-mode-syntax-table)
(modify-syntax-entry ?\] ")[" lisp-mode-syntax-table)
(modify-syntax-entry ?\{ "(}" lisp-mode-syntax-table)
(modify-syntax-entry ?\} "){" lisp-mode-syntax-table)














;; (require 'ac-slime)
;; (add-hook 'slime-mode-hook 'set-up-slime-ac)
;; (add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
;; (add-hook 'comint-mode-hook
;;           (lambda ()
;;             (slime-mode t)
;;             (auto-complete-mode t)
;;             ))


