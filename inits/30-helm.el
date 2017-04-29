;;; helm
(require 'helm-config)

(helm-mode 1)
(setq helm-input-idle-delay 0.02)

;; In Buffer File Completion
(setq enable-recursive-minibuffers t)

;; ミニバッファで C-k 入力時にカーソル以降を削除する（C-u C-k でも同様の動きをする）
(setq helm-delete-minibuffer-contents-from-point t)

;; http://fukuyama.co/nonexpansion
;; 自動補完を無効にする
(setq helm-ff-auto-update-initial-value nil)

;; C-h でバックスペースと同じように文字を削除できるようにする
(define-key helm-read-file-map (kbd "C-h") 'delete-backward-char)

;; TAB で補完する
(define-key helm-read-file-map (kbd "<tab>") 'helm-execute-persistent-action)


;;; http://www49.atwiki.jp/ntemacs/m/pages/32.html
;; http://d.hatena.ne.jp/sugyan/20120104/1325604433
;; プレフィックスキーを C-; に設定する
(custom-set-variables '(helm-command-prefix-key "C-;"))


;; キーバインドを設定する。コマンド起動後は、以下のキーが利用可能となる
;;  ・M-n     ：カーソル位置の単語を検索パターンに追加
;;  ・C-z     ：チラ見
;;  ・C-c C-f ：helm-follow-mode の ON/OFF
(global-set-key (kbd "C-; C-f") 'helm-for-files)
(define-key helm-command-map (kbd "C-;")   'helm-resume)
(define-key helm-command-map (kbd "y")     'helm-show-kill-ring)
(define-key helm-command-map (kbd "o")     'helm-occur)
(define-key helm-command-map (kbd "i")     'helm-imenu)
(define-key helm-command-map (kbd "n e t") 'helm-net)
(define-key helm-command-map (kbd "C-s")   'helm-occur-from-isearch)
(define-key helm-command-map (kbd "t")     'helm-gtags-find-tag)


;; 自動補完を無効
(custom-set-variables '(helm-ff-auto-update-initial-value nil))


(require 'helm-git-grep)
(global-set-key (kbd "C-; g") 'helm-git-grep)
(define-key isearch-mode-map (kbd "C-; g") 'helm-git-grep-from-isearch)
(eval-after-load 'helm '(define-key helm-map (kbd "C-; g") 'helm-git-grep-from-helm))


(require 'helm-ls-git)


;; helm-do-grep-recursive
;; http://www.reddit.com/r/emacs/comments/2dxj69/how_do_make_helmdogrep_to_do_recursive_always/
(defun helm-do-grep-recursive (&optional non-recursive)
  "Like `helm-do-grep', but greps recursively by default."
  (interactive "P")
  (let* ((current-prefix-arg (not non-recursive))
         (helm-current-prefix-arg non-recursive))
    (call-interactively 'helm-do-grep)))
