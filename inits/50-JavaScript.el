(when (require 'js2-mode)

  (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.es$" . js2-mode))

;;  (flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)

  ;; tern-mode
  ;; http://ternjs.net/doc/manual.html#emacs
  ;;
  ;; require `npm install -g tern'
  ;; https://www.npmjs.com/package/tern
  (autoload 'tern-mode "tern.el" nil t)
  (add-hook 'js2-mode-hook 'js2-jsx-mode-hook 'tern-mode)
    (eval-after-load 'tern
      '(progn
         (require 'tern-auto-complete)
         (tern-ac-setup))))


;; js3-mode
;; (when (require 'js3-mode)
;;   (custom-set-variables
;;    '(js3-auto-indent-p t)
;;    '(js3-curly-indent-offset 2)
;;    '(js3-enter-indents-newline t)
;;    '(js3-expr-indent-offset 4)
;;    '(js3-indent-dots t)
;;    '(js3-enter-indents-newline t)
;;    '(js3-indent-on-enter-key t)
;;    '(js3-lazy-commas t)
;;    '(js3-lazy-dots nil)
;;    '(js3-lazy-operators t)
;;    '(js3-lazy-semicolons t)
;;    '(js3-paren-indent-offset 4)
;;    '(js3-square-indent-offset 4))
;;   (setq js3-consistent-level-indent-inner-bracket t)


;;   ;; tern-mode
;;   ;; http://ternjs.net/doc/manual.html#emacs
;;   ;;
;;   ;; require `npm install -g tern'
;;   ;; https://www.npmjs.com/package/tern
;;     (autoload 'tern-mode "tern.el" nil t)
;;     (add-hook 'js3-mode-hook 'tern-mode)
;;     (eval-after-load 'tern
;;       '(progn
;;          (require 'tern-auto-complete)
;;          (tern-ac-setup))))


;;; js-doc
;; https://github.com/mooz/js-doc/
(when (require 'js-doc))


(when (require 'web-mode)
  (autoload 'tern-mode "tern.el" nil t))

;; (when (require 'nodejs-repl))


(defun json:format-jq (beg end)
  (interactive "r")
  (shell-command-on-region beg end "jq ." nil t))
