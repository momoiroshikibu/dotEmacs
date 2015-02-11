;; ruby-mode
;; (autoload 'ruby-mode "ruby-mode"
;;   "Mode for editing ruby source files" t)
(require 'ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(require 'ruby-end)

;; ruby-electric
;; (require 'ruby-electric)
;; (add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
;; (setq ruby-electric-expand-delimiters-list nil)

;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; smart-compile
;; (require 'smart-compile)
;; (define-key ruby-mode-map (kbd "C-c c") 'smart-compile)
;; (define-key ruby-mode-map (kbd "C-c C-c") (kbd "C-c c C-m"))

;; quickrun
(require 'quickrun)
(define-key ruby-mode-map (kbd "C-c C-r") 'quickrun)
(define-key ruby-mode-map (kbd "C-; r") 'helm-quickrun)


(add-hook 'ruby-mode-hook
  '(lambda ()
    (abbrev-mode 1)
    (electric-pair-mode t)
    (electric-indent-mode t)
    (electric-layout-mode t)
    (robe-mode)))


;; インデントの設定
(setq ruby-deep-indent-paren-style nil)
(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))


(custom-set-variables
 '(helm-mini-default-sources '(helm-source-buffers-list
                   helm-source-recentf
                   helm-source-buffer-not-found
                   helm-quickrun-source)))
