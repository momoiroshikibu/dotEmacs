;; 定義へ移動
;; C-x F -> 関数定義へ移動
;; C-x K -> キーにバインドされている関数定義へ移動
;; C-x V -> 変数定義へ移動
(find-function-setup-keys)


(global-set-key "\C-m" 'newline-and-indent)
;; (define-key global-map (kbd "M-o") 'helm-c-moccur-occur-by-moccur) ;バッファ内検索
;; (define-key global-map (kbd "C-M-o") 'helm-c-moccur-dmoccur) ;ディレクトリ
(define-key global-map (kbd "s-o") 'helm-c-moccur-buffer-list)



;;; Mac Meta Key
(setq mac-option-modifier 'meta)
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; Super key in Linux on the VirtualBox with Mac
;; (setq x-super-keysym 'meta)
;; (setq x-meta-keysym 'super)


;;; Backspace To C-H
(global-set-key (kbd "C-h") 'delete-backward-char)



;;; Comment
(global-set-key (kbd "C-/") 'comment-dwim)
; (global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)
(setq comment-style 'plain)


;; undo-tree
(define-key global-map (kbd "C-+") 'undo-tree-redo)


;; yasnippet
(custom-set-variables '(yas-trigger-key "M-/"))
;; 既存スニペットを挿入
;; (define-key yas-minor-mode-map (kbd "C-x y i") 'yas-insert-snippet)



;; helm keys
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-x C-r") 'helm-for-files)
(global-set-key (kbd "C-; k l") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-; g") 'helm-git-grep)


;; ;; For find-file etc.
;; (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; ;; For helm-find-files etc.
;; (define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)



(setq helm-input-idle-delay 0.02)

;;; In Buffer File Completion
(setq enable-recursive-minibuffers t)

;;; Helm Find Files
(global-set-key (kbd "C-x C-f") 'helm-find-files)
;;; Jump With nth commands
(define-key helm-map (kbd "<C-tab>") 'helm-select-4th-action)




;; dired
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; direx
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
(define-key direx:direx-mode-map (kbd "C-z") 'direx:display-item)
