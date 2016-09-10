(deftheme matsuura "The Theme of Matsuura")

(custom-theme-set-faces
 'matsuura
 ;; 背景・文字・カーソル
 '(cursor ((t (:background "#F92672"))))

 '(default ((t (:background "#122027" :foreground "#f2f1f1"))))

 ;; 選択範囲
 '(region ((t (:background "#89812b"))))

 ;; minibuffer
 '(minibuffer-prompt ((t (:foreground "#76daff" :background "#1B1D1E"))))

 ;; 空白
 '(trailing-whitespace ((t (:background "#505050" :foreground "#303030" :underline t))))

 ;; モードライン
 '(mode-line ((t (:foreground "#FB70A2" :background "#2c131c"
                              :box (:line-width 1 :color "#000000" :style released-button)))))
 '(mode-line-buffer-id ((t (:foreground nil :background nil))))
 '(mode-line-inactive ((t (:foreground "#7c7c79"
                                       :background "#2c131c"
                                       :box (:line-width 1 :color "#000000" :style released-button)))))

 ;; ハイライト
 '(highlight ((t (:foreground "#000000" :background "#C4BE89"))))
 '(hl-line ((t (:background "#1f4b2b"))))

 ;; 関数名
 '(font-lock-function-name-face ((t (:foreground "#b59dbc"))))

 ;; 変数名・変数の内容
 '(font-lock-variable-name-face ((t (:foreground "#809bbd"))))
 '(font-lock-string-face ((t (:foreground "#96b38a"))))

 ;; プリプロセッサ
 '(font-lock-preprocessor-face ((t (:foreground "#000000"))))

 ;;
 '(font-lock-other-emphasized-face ((t (:foreground "#000000"))))

 ;; 参照している部分の色
 '(font-lock-reference-face ((t (:foreground "#000000"))))

 ;; 特定キーワード
 '(font-lock-keyword-face ((t (:foreground "#ddca7e"))))

 ;; Boolean
 '(font-lock-constant-face ((t (:foreground "#55ae17"))))

 ;; 括弧
 '(show-paren-match-face    ((t (:foreground "#dd3af0" :background "#480d4f" :bold t))))
 '(show-paren-mismatch-face ((t (:foreground "#bf1a37" :background "#FD971F"))))


 '(font-lock-warning-face ((t (:foreground "#df0000"))))

 ;; isearch
 '(isearch ((t (:foreground "#32dd27"))))

 ;; コメント
 '(font-lock-comment-face ((t (:foreground "#8F8C74"))))

 ;; doc
 '(font-lock-doc-face        ((t (:foreground "#A4A0A4")))) ; #5d4c5a - original
 '(font-lock-doc-string-face ((t (:foreground "#999989"))))

 ;; CSS
 '(css-selector ((t (:foreground "#66D9EF"))))
 '(css-property ((t (:foreground "#FD971F"))))

 ;; nXML-mode
 ;; タグ名
 '(nxml-element-local-name ((t (:foreground "#F92672"))))
 ;; 属性
 '(nxml-attribute-local-name ((t (:foreground "#66D9EF"))))
 ;; 括弧
 '(nxml-tag-delimiter ((t (:foreground "#A6E22A"))))
 ;; <!doctype>
 '(nxml-markup-declaration-delimiter ((t (:foreground "#74715D"))))


 ;; dired
 '(dired-directory ((t (:foreground "#A6E22A"))))
 '(dired-symlink   ((t (:foreground "#66D9EF"))))


 ;; MMM-mode
 '(mmm-default-submode-face ((t (:foreground nil :background "#000000"))))


 ;; company mode
 '(company-tooltip ((t (:foreground "#122027" :background "#f2f1f1"))))
 '(company-tooltip-common ((t (:foreground "#122027" :background "#f2f1f1"))))
 '(company-tooltip-common-selection ((t (:foreground "#ffffff" :background "steelblue"))))
 '(company-tooltip-selection ((t (:foreground "#f2f1f1" :background "steelblue"))))
 '(company-tooltip-preview-common ((t (:foreground "#f2f1f1"))))
 '(company-scrollbar-fg ((t (:background "#a9a8a8"))))
 '(company-scrollbar-bg ((t (:background "#f2f1f1")))))


(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
