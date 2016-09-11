;; CoffeeScript
(when (require 'coffee-mode)

  (defun coffee-custom ()
    "coffee-mode-hook"
    (set (make-local-variable 'tab-width) 2)
    (setq coffee-tab-width 2)
    ;; automatically clean up bad whitespace
    (setq whitespace-action '(auto-cleanup))
    ;; only show bad whitespace
    (setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)))

  (add-hook 'coffee-mode-hook
            '(lambda() (coffee-custom)))

  (add-hook 'coffee-mode-hook
            '(lambda() (tern-mode t)))

  (eval-after-load "coffee-mode"
    '(progn
       (define-key coffee-mode-map (kbd "C-j") 'coffee-newline-and-indent))))


(when (require 'flymake-coffee)
  (add-hook 'coffee-mode-hook 'flymake-coffee-load))
