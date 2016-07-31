;; cask
(require 'cask "/usr/local/opt/cask/cask.el")
; (require 'cask)
(cask-initialize)



;;; load-path
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path
; "auto-install"
; "conf"
; "elisp"
; "elpa"
)
(add-to-list 'load-path "$GOPATH/src/github.com/nsf/gocode/emacs")
(add-to-list 'exec-path (expand-file-name "~/homebrew/bin"))



;; init-loader
(when (require 'init-loader)
  (init-loader-load))


(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)



