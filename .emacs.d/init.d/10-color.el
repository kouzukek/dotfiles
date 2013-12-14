;; http://d.hatena.ne.jp/syohex/20121211/1355231365

(deftheme molokai
  "Molokai color theme")

(custom-theme-set-faces
 'molokai
 ;; 背景・文字・カーソル
 '(cursor ((t (:foreground "#F8F8F0"))))
 '(default ((t (:background "#1B1D1E" :foreground "#F8F8F2"))))

 '(fringe ((t (:background "#323638"))))

 ;; 選択範囲
 '(region ((t (:background "#403D3D"))))

 ;; モードライン
 '(mode-line ((t (:foreground "#F8F8F2" :background "#000000"
			      :box (:line-width 1)))))
 '(mode-line-buffer-id ((t (:foreground nil :background nil))))
 '(mode-line-inactive ((t (:foreground "#BCBCBC" :background "#333333"
                           :box (:line-width 1 :color "#666666")))))

 ;; ハイライト
 '(highlight ((t (:foreground "#000000" :background "#C4BE89"))))
 '(hl-line ((t (:background "#293739"))))

 ;; 関数名
 '(font-lock-function-name-face ((t (:foreground "#FFFFFF"))))

 ;; 変数名・変数の内容
 '(font-lock-variable-name-face ((t (:foreground "#FFFFFF"))))
 '(font-lock-string-face ((t (:foreground "#E6DB74"))))

 ;; 特定キーワード
 '(font-lock-keyword-face ((t (:foreground "#F1528B"))))

 ;; Boolean
 '(font-lock-constant-face((t (:foreground "#AE81BC"))))

 ;; 括弧
 '(show-paren-match-face ((t (:foreground "#1B1D1E" :background "#FD971F"))))
 '(paren-face ((t (:foreground "#A6E22A" :background nil))))

 ;; コメント
 '(font-lock-comment-face ((t (:foreground "#FD971F"))))

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
 ;; DOCTYPE宣言
 '(nxml-markup-declaration-delimiter ((t (:foreground "#74715D"))))

 ;; dired
 '(dired-directory ((t (:foreground "#A6E22A"))))
 '(dired-symlink ((t (:foreground "#66D9EF"))))

 ;; MMM-mode
 '(mmm-default-submode-face ((t (:foreground nil :background "#000000"))))

 ;; org-mode
 '(org-level-1 ((t (:foreground "LightSkyBlue" :bold nil))))
 '(org-level-2 ((t (:foreground "LightGoldenrod" :bold nil))))
 '(org-level-3 ((t (:foreground "Cyan1" :bold nil))))
 '(org-level-4 ((t (:foreground "chocolate1" :bold nil))))
 '(org-level-5 ((t (:foreground "PaleGreen" :bold nil))))
 '(org-level-6 ((t (:foreground "Aquamarine" :bold nil))))
 '(org-level-7 ((t (:foreground "LightSteelBlue" :bold nil))))
 '(org-level-8 ((t (:foreground "LightSalmon" :bold nil))))
)

;;;###autoload
;(when load-file-name
;  (add-to-list 'custom-theme-load-path
;               (file-name-as-directory (file-name-directory load-file-name))))

;(provide-theme 'molokai)
