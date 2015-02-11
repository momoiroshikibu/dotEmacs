;;; auto-complete.el

(setq ac-comphist-file "~/.emacs.d/.cache/auto-complete/ac-comphist.dat")
(setq ac-comphist)

(when (require 'auto-complete-config)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/conf/auto-complete/dict")
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/conf/auto-complete/JavaScript")
  (ac-config-default))

(when (require 'auto-complete)
  (global-auto-complete-mode t)
  ;; js3-modeでも有効
  (setq ac-modes (cons 'js3-mode ac-modes))

  (setq ac-dwin t)
  (setq-default ac-sources '(ac-source-filename ac-source-words-in-same-mode-buffers))
  (define-key ac-complete-mode-map (kbd "C-M-/") 'ac-complete-with-helm)

  (add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols t)))

  (setq ac-auto-start 3)
  (ac-set-trigger-key "TAB")
  )

;;(require 'ac-helm) ;; Not necessary if using ELPA package



(defun ac-clear-variables-every-minute ())







(defvar ac-dir (expand-file-name "~/.emacs.d/conf/auto-complete"))
(add-to-list 'load-path ac-dir)
;; (add-to-list 'load-path (concat ac-dir "/lib/ert"))
;; (add-to-list 'load-path (concat ac-dir "/lib/fuzzy"))
;; (add-to-list 'load-path (concat ac-dir "/lib/popup"))

(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

(setq ac-use-menu-map t) ;; Move selective candidates by [C-n] / [C-p]
(setq ac-auto-show-menu 0.3) ;; Popup candidates delay.




;;-----------
;; Auto-Complete user dictionaries location.
(defvar ac-user-dict-dir (expand-file-name "~/.emacs.d/conf/auto-complete/JavaScript/"))

;; Complete action:
;; Put the cursor within () if a candidate has () at the end of it.
(defun ac-go-into-braces-action ()
  (save-restriction
    (narrow-to-region (point) (- (point) 2))
    (if (re-search-backward "()" nil t)
        (forward-char))))
