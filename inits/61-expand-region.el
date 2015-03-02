(when (require 'expand-region)
  (global-set-key (kbd "C-M-SPC") 'er/expand-region)
  (global-set-key (kbd "C-M-S-SPC") 'er/contract-region)
  (transient-mark-mode t))
