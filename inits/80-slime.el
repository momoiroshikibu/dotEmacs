(require 'slime)
(load (expand-file-name "~/.roswell/helper.el"))
(setq inferior-lisp-program "ros -L sbcl -Q run")
(setq slime-contribs '(slime-fancy))

;; slime-company
(require 'slime-company)
(slime-setup '(slime-fancy slime-company))


(add-hook 'lisp-mode-hook (lambda ()
                            (slime-mode t)
                            (define-key lisp-mode-map (kbd "C-c C-s") 'slime)))


;; (setf slime-lisp-implementations
;;       `((sbcl    ("sbcl" "--dynamic-space-size" "2000"))
;;         (roswell ("ros" "dynamic-space-size=2000" "-Q" "-l" "~/.sbclrc" "run"))))
;; (setf slime-default-lisp 'roswell)


(modify-syntax-entry ?\[ "(]" lisp-mode-syntax-table)
(modify-syntax-entry ?\] ")[" lisp-mode-syntax-table)
(modify-syntax-entry ?\{ "(}" lisp-mode-syntax-table)
(modify-syntax-entry ?\} "){" lisp-mode-syntax-table)

