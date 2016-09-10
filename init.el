;; cask
(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

;; path
(add-to-list 'exec-path (expand-file-name "~/homebrew/bin"))

;; init-loader
(when (require 'init-loader)
  (init-loader-load))
