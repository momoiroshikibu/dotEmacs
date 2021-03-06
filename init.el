;; cask

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

;; path
(add-to-list 'exec-path (expand-file-name "~/homebrew/bin"))

;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load)


;; color-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/momoiro-theme.el")
(load-theme 'momoiro t)
(enable-theme 'momoiro)
