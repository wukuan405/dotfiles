;;; 05company.el --- 05company.el
;;; Commentary:
;;; Code:
;;(setq debug-on-error t)

(require 'company)

;; general
(setq comany-minimum-prefix-length 3)
(setq comany-selection-wrap-around t)
(bind-key "C-M-i" 'company-complete)
(bind-key "C-h" nil company-active-map)
(bind-key "C-n" 'company-select-next company-active-map)
(bind-key "C-p" 'company-select-previous company-active-map)
(bind-key "C-n" 'company-select-next company-search-map)
(bind-key "C-p" 'company-select-previous company-search-map)
(bind-key "<tab>" 'company-complete-common-or-cycle company-active-map)
(bind-key "<backtab>" 'company-select-previous company-active-map)
(bind-key "C-i" 'company-complete-selection company-active-map)
(bind-key "M-d" 'company-show-doc-buffer company-active-map)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook 'company-statistics-mode)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
;;; 05company.el ends here
