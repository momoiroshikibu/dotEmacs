;; Encoding
;; UTF-8
;; http://www.emacswiki.org/emacs/UnicodeEncoding
(prefer-coding-system         'utf-8)
(setq default-coding-systems  'utf-8)
(setq file-name-coding-system 'utf-8)


;; Compilation Settings
(setq max-lisp-eval-depth 50000)
(setq max-specpdl-size    50000)


;; Delete Selection Mode
;; http://emacswiki.org/emacs/DeleteSelectionMode
(delete-selection-mode t)


;; Completion
;; http://www.emacswiki.org/emacs/Completion#completion
(setq partial-completion-mode 1)
(setq completion-ignore-case  t)
(setq read-file-name-completion-ignore-case t)


;; Recent Files
;; http://www.emacswiki.org/emacs/RecentFiles
(recentf-mode t)
(setq recentf-max-menu-items 10)
(setq recentf-max-saved-items 3000)
(custom-set-variables
 '(recentf-save-file
   (format "~/.emacs.d/.cache/recentf/%s"
           (replace-regexp-in-string "\\." "_" system-configuration))))


;; Emacs As Daemon
;; http://www.emacswiki.org/emacs/EmacsAsDaemon
(when (require 'server)
  (unless (server-running-p)
    (server-start)))


;; Messages Buffer
;; http://www.emacswiki.org/emacs/MessagesBuffer
(setq message-log-max 10000)


;; Save Hist
;; http://www.emacswiki.org/emacs/SaveHist
(savehist-mode 1)
(setq savehist-file "~/.emacs.d/.cache/savehist/history")


;; Auto Save
;; http://emacswiki.org/emacs/AutoSave
(add-to-list 'backup-directory-alist
             (cons (expand-file-name "~/")
                   (expand-file-name "~/.emacs.d/.backups/")))
(setq auto-save-file-name-transforms
      `((".*", (expand-file-name "~/.emacs.d/.auto-save-list/") t)))
(setq auto-save-list-file-prefix ".auto-save-list/")
(setq delete-auto-save-files nil)


;; exec-path-from-shell
;; https://github.com/purcell/exec-path-from-shell
(when (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))
