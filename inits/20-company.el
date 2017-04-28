(require 'company)
(global-company-mode 1)

(custom-set-variables '(company-idle-delay nil))

(global-set-key (kbd "C-M-i") 'company-complete)
(global-set-key (kbd "C-S-i") 'company-complete)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-search-map (kbd "C-n") 'company-select-next)
(define-key company-search-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-s") 'company-filter-candidates)
(define-key company-active-map (kbd "C-i") 'company-complete-selection)
(define-key emacs-lisp-mode-map (kbd "C-M-i") 'company-complete)

(require 'company-quickhelp)
(company-quickhelp-mode 1)
