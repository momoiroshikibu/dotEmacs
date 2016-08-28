


;; (when (require 'rainbow-delimiter-mode))
(when (require 'rainbow-delimiters)
  (add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode))


