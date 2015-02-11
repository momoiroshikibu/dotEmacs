;; 現在のディレクトリをFinderで開く
(defun open-current-dir-with-finder ()
  (interactive)
  (shell-command (concat "open .")))


;; root権限で開き直す
;; http://qiita.com/k_ui/items/d9e03ea9523036970519
(defun reopen-with-sudo ()
  "Reopen current buffer-file with sudo using tramp."
  (interactive)
  (let ((file-name (buffer-file-name)))
    (if file-name
        (find-alternate-file (concat "/sudo::" file-name))
      (error "Cannot get a file name"))))
