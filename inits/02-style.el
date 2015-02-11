
;;; ミニバッファ
(set-face-foreground 'mode-line-inactive "#333")
(set-face-background 'mode-line-inactive "#eee")


;;; キーワードのカラー表示を有効化
(global-font-lock-mode t)


;;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#aaa")


;;; カーソルの位置情報
(column-number-mode t)


;;; 現在行を目立たせる
(global-hl-line-mode t)
(set-face-background 'hl-line "#141")

;;; 関数名を表示
(which-function-mode 1)

;;; show-paren
(show-paren-mode t)

;;; hide menubar
(menu-bar-mode -1)
;;; hide toolbar
(tool-bar-mode -1)
;;; scrollbar
(scroll-bar-mode t)

;;; indent
(setq c-tab-always-indent t)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq indent-line-function 'indent-relative-maybe)

;; cursor
(set-default 'cursor-type 'bar)
