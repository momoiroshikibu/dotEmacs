;; Font Settings
;; Ricty Diminished Discord
(let ((font-face "Ricty Diminished Discord")
      (charset   "iso10646-1"))
  (set-face-attribute 'default nil
                      :family font-face
                      :height 140)
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0208
                    (cons font-face charset))
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0212
                    (cons font-face charset))
  (set-fontset-font (frame-parameter nil 'font)
                    'katakana-jisx0201
                    (cons font-face charset)))
