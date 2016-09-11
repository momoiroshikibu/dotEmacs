(when (require 'js2-mode)

  (add-to-list 'auto-mode-alist '("\\.jsx$" . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.es$" . js2-mode))

  (when (require 'flycheck)
    (flycheck-add-mode 'javascript-eslint 'js2-mode))

  (add-hook 'js2-mode-hook (lambda () (tern-mode t)))

  ;; tern-mode
  ;; http://ternjs.net/doc/manual.html#emacs
  ;;
  ;; require `npm install -g tern'
  ;; https://www.npmjs.com/package/tern
  (autoload 'tern-mode "tern.el" nil t)
  (when (require 'company-tern)
    (add-to-list 'company-backends 'company-tern)))

(when (require 'web-mode))


(defun json:format-jq (beg end)
  (interactive "r")
  (shell-command-on-region beg end "jq ." nil t))
