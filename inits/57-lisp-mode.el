;; (setq inferior-lisp-program "clisp")
(setq inferior-lisp-program "ccl")
(add-to-list 'load-path "/usr/local/bin/clisp")


(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

;; (when (require 'lispxmp))

(add-to-list 'ac-modes 'slime-repl-mode)
(add-to-list 'ac-modes 'lisp-mode)

(modify-syntax-entry ?\[ "(]" lisp-mode-syntax-table)
(modify-syntax-entry ?\] ")[" lisp-mode-syntax-table)
(modify-syntax-entry ?\{ "(}" lisp-mode-syntax-table)
(modify-syntax-entry ?\} "){" lisp-mode-syntax-table)


;; (when (require 'rainbow-delimiter-mode))
(when (require 'rainbow-delimiters)
  (add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode))

