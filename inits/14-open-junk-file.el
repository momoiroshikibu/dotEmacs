;; open junk file
(when (require 'open-junk-file)
  (setq open-junk-file-format "~/Documents/stashes/%Y/%m/%Y%m%d-%H-%M-%S.")
  (global-set-key (kbd "C-x j f") 'open-junk-file))
