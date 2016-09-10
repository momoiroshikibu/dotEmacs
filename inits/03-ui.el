;; start-message - off
;; http://www.emacswiki.org/emacs/CommunityEmacsFAQ#toc3
(setq inhibit-startup-message t)


;; Frame Title Format
;; http://www.emacswiki.org/emacs/FrameTitle
(setq frame-title-format (format "%%f - @%s" (system-name)))


;; Which Func Mode
;; http://www.emacswiki.org/emacs/WhichFuncMode
(which-function-mode 1)


;; Yes Or No P
;; http://www.emacswiki.org/emacs/YesOrNoP
(defalias 'yes-or-no-p 'y-or-n-p)


;; Auto Image File Mode
;; http://www.emacswiki.org/emacs/AutoImageFileMode
(auto-image-file-mode nil)


;; save cursor position
;; http://www.emacswiki.org/emacs/SavePlace
(when (require 'saveplace)
  (setq-default save-place t)
  (setq save-place-file "~/.emacs.d/.cache/saved-places"))


;; Drag And Drop
;; http://www.emacswiki.org/emacs/DragAndDrop
(define-key global-map [ns-drag-file] 'ns-find-file)
;; (setq ns-pop-up-frames nil)


;; Mini Buffer
;; http://www.emacswiki.org/emacs/MiniBuffer#minibuffer
(setq enable-recursive-minibuffers t)


;; minibuffer commands
;; http://d.hatena.ne.jp/rubikitch/20091216/minibuffer
(defadvice abort-recursive-edit (before minibuffer-save activate)
  (when (eq (selected-window) (active-minibuffer-window))
    (add-to-history minibuffer-history-variable (minibuffer-contents))))


;; Show Paren Mode
;; http://emacswiki.org/emacs/ShowParenMode
(setq show-paren-style 'mixed)

;; Electric Pair
(when (>= emacs-major-version 24)
  (electric-pair-mode t))


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


;; Line Numbers
;; http://www.emacswiki.org/emacs/LineNumbers
;; http://d.hatena.ne.jp/daimatz/20120215/1329248780
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))


;; scroll
(setq scroll-conservatively 1)
(setq scroll-margin 5)
(setq next-screen-context-lines 5)
(setq scroll-preserve-screen-position t)


