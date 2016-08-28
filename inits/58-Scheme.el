(add-to-list 'auto-mode-alist '("\\.scheme$" . scheme-mode))

(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)
(defun run-gauche ()
  (interactive)
  (run-scheme "gosh"))
