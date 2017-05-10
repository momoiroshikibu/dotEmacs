;; ruby-mode
(require 'ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; ruby-end
(require 'ruby-end)

;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; quickrun
(require 'quickrun)
(define-key ruby-mode-map (kbd "C-c C-r") 'quickrun)

;; indent
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


;; prevent form inserting magic comment
;; # -*- coding: utf-8 -*-
(setq ruby-insert-encoding-magic-comment nil)

(setq ruby-use-encoding-map nil)

(require 'inf-ruby)
(setq inf-ruby-default-implementation "pry")

;; robe
(require 'robe)
(eval-after-load 'company '(push 'company-robe company-backends))


(add-hook 'ruby-mode-hook '(lambda ()
                             (abbrev-mode 1)
                             (electric-pair-mode t)
                             (electric-indent-mode t)
                             (electric-layout-mode t)
                             (robe-mode)
                             (flycheck-mode)))
