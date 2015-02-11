;;; Unicode Encoding
; http://www.emacswiki.org/emacs/UnicodeEncoding
(prefer-coding-system         'utf-8)
(setq default-coding-systems  'utf-8)
(setq file-name-coding-system 'utf-8)


;;; Alarm Bell
; http://www.emacswiki.org/emacs/AlarmBell
; Get visual indication of an exception
(setq visible-bell t)
; Turn off alarms completely
(setq ring-bell-function 'ignore)


;;; Compilation Settings
(setq max-lisp-eval-depth 50000)
(setq max-specpdl-size    50000)


;;; How can I disable the splash screen?
; http://www.emacswiki.org/emacs/CommunityEmacsFAQ#toc3
(setq inhibit-startup-message t)


;;; Frame Title
; http://www.emacswiki.org/emacs/FrameTitle
(setq frame-title-format (format "%%f - @%s" (system-name)))


;;; Which Func Mode
; http://www.emacswiki.org/emacs/WhichFuncMode
(which-function-mode 1)


;;; Delete Selection Mode
; You can replace the active region just by typing text, and you can delete the selected text just by hitting the Backspace key (‘DEL’).
; http://emacswiki.org/emacs/DeleteSelectionMode
(delete-selection-mode t)


;;; Completion
; http://www.emacswiki.org/emacs/Completion#completion
(setq partial-completion-mode 1)
(setq completion-ignore-case  t)
(setq read-file-name-completion-ignore-case t)


;;; Electric Pair
(when (>= emacs-major-version 24)
    (electric-pair-mode t))


;;; Yes Or No P
; http://www.emacswiki.org/emacs/YesOrNoP
(defalias 'yes-or-no-p 'y-or-n-p)


;;; Recent Files
; http://www.emacswiki.org/emacs/RecentFiles
(recentf-mode t)
(setq recentf-max-menu-items 10)
(setq recentf-max-saved-items 3000)
(custom-set-variables
 '(recentf-save-file
   (format "~/.emacs.d/.cache/recentf/%s"
           (replace-regexp-in-string "\\." "_" system-configuration))))



;;; Auto Image File Mode
; http://www.emacswiki.org/emacs/AutoImageFileMode
(auto-image-file-mode nil)


;;; save cursor position
; http://www.emacswiki.org/emacs/SavePlace
; Purpose: When you visit a file, point goes to the last place where it was when you previously visited the same file.
(when (require 'saveplace)
  (setq-default save-place t)
  (setq save-place-file "~/.emacs.d/.cache/saved-places"))


;;; Emacs As Daemon
; http://www.emacswiki.org/emacs/EmacsAsDaemon
(when (require 'server)
  (unless (server-running-p)
    (server-start)))


;;; Drag And Drop
; http://www.emacswiki.org/emacs/DragAndDrop
(define-key global-map [ns-drag-file] 'ns-find-file)
; (setq ns-pop-up-frames nil)


;;; Messages Buffer
; http://www.emacswiki.org/emacs/MessagesBuffer
(setq message-log-max 10000)


;;; Mini Buffer
; http://www.emacswiki.org/emacs/MiniBuffer#minibuffer
(setq enable-recursive-minibuffers t)


;;; minibuffer commands
; http://d.hatena.ne.jp/rubikitch/20091216/minibuffer
(defadvice abort-recursive-edit (before minibuffer-save activate)
  (when (eq (selected-window) (active-minibuffer-window))
    (add-to-history minibuffer-history-variable (minibuffer-contents))))


;;; Save Hist
; http://www.emacswiki.org/emacs/SaveHist
(savehist-mode 1)
(setq savehist-file "~/.emacs.d/.cache/savehist/history")


;;; Auto Save
; http://emacswiki.org/emacs/AutoSave
(add-to-list 'backup-directory-alist
             (cons (expand-file-name "~/")
                   (expand-file-name "~/.emacs.d/.backups/")))
(setq auto-save-file-name-transforms
      `((".*", (expand-file-name "~/.emacs.d/.auto-save-list/") t)))
(setq auto-save-list-file-prefix ".auto-save-list/")
(setq delete-auto-save-files nil)


;;; Show Paren Mode
; http://emacswiki.org/emacs/ShowParenMode
(setq show-paren-style 'mixed)


;;; exec-path-from-shell
; https://github.com/purcell/exec-path-from-shell
(when (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))


;; direx
;; popwin
(when (require 'direx)
  (require 'direx-project)
  (setq direx:leaf-icon "  "
        direx:open-icon "▾ "
        direx:closed-icon "▸ ")
  (when (require 'popwin)
    (popwin-mode 1)
    (push '(direx:direx-mode :position left :width 40 :dedicated t)
          popwin:special-display-config)))


;;; Line Numbers
; http://www.emacswiki.org/emacs/LineNumbers
; http://d.hatena.ne.jp/daimatz/20120215/1329248780
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))

