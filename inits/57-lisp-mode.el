(require 'rainbow-delimiters)
(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

;; defines the common-lisp-indent-function properties
(load-library "cl-indent")
(cl-loop for symbol being the symbols
         for cl-indent-rule = (get symbol 'common-lisp-indent-function)
         for elisp-equivalent = (intern-soft (concat "cl-" (symbol-name symbol)))
         when (and cl-indent-rule elisp-equivalent (fboundp elisp-equivalent))
         do (put elisp-equivalent 'common-lisp-indent-function cl-indent-rule))
