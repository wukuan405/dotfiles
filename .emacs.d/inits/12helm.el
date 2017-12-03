;; helm-tramp
(setq tramp-default-method "ssh")
(defalias 'quit-tramp 'tramp-cleanup-all-buffers)
(bind-key "C-c s" 'helm-tramp)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))
(setq helm-tramp-docker-user '("admin" "user" "masa"))


;; helm-ghq
(bind-key "C-x l" 'helm-ghq)
(bind-key "C-x C-l" 'helm-ghq)


;; helm
;;(require 'helm-config)
;;(helm-mode 1)


;; helm-key
;;(bind-key "C-c h" 'helm-command-prefix)
;; It does not end with C-x C-c
;;(bind-key "C-x C-c" 'helm-smex)
;; helm-mini
;;(bind-key "C-;" 'helm-mini)
;;(bind-key "C-;" 'helm-keyboard-quit helm-map)
;; helm-recentf
;;(bind-key "C-x C-r" 'helm-recentf)
;; helm-resume
;;(bind-key "C-z" 'helm-resume)
;;(bind-key "C-x C-z" 'helm-resume)
;; Follow gloval-mark with helm
;;(bind-key "C-x m" 'helm-all-mark-rings)
;; Helm C-h delete previous character
;;(bind-key "C-h" 'delete-backward-char helm-map)
;; Segment delete with helm C-w
;;(bind-key "C-w" 'backward-kill-word helm-map)
;; helm-for-files
;;(bind-key "C-x b" 'helm-for-files)
;; helm-M-x
;;(bind-key "M-x" 'helm-M-x)
;; kill-ring
;;(bind-key "M-y" 'helm-show-kill-ring)
;; show keybind
;;(bind-key "C-c b" 'helm-descbinds)
;; chrome bookmark
;;(bind-key "C-c b" 'helm-chrome-bookmarks)
;; helm find files
;;(bind-key "C-x C-f" 'helm-find-files)
;;(bind-key "C-h" 'delete-backward-char helm-find-files-map)
;;(bind-key "TAB" 'helm-execute-persistent-action helm-find-files-map)
;;(bind-key "TAB" 'helm-execute-persistent-action helm-read-file-map)
;; helm-browse-project
;;(bind-key "C-x C-d" 'helm-browse-project)
;; helm-next helm-previous
;;(bind-key "C-M-n" 'helm-next-source helm-map)
;;(bind-key "C-M-p" 'helm-previous-source helm-map)


;; fuzzy-match
;; (setq helm-buffers-fuzzy-matching t)
;; (setq helm-recentf-fuzzy-match t)
;; (setq helm-M-x-fuzzy-match t)
;; (setq helm-apropos-fuzzy-match t)
;; (setq helm-locate-fuzzy-match t)


;; Add files related to project to helm-for-files
;; (defadvice helm-for-files (around update-helm-list activate)
;;   (let ((helm-for-files-preferred-list
;;          (helm-for-files-update-list)))
;;     ad-do-it))

;; (defun helm-for-files-update-list ()
;;   `(helm-source-buffers-list
;;     helm-source-files-in-current-dir
;;     helm-source-recentf
;;     helm-source-file-cache
;;     ,(if (projectile-project-p)
;; 	 helm-source-projectile-files-list)))


;; helm-multi-files  recentf
;;(setq recentf-max-saved-items 1000)


;; helm-descbinds
;;(require 'helm-descbinds)
;;(helm-descbinds-mode)


;; helm-directory
;;(bind-key "C-c l" 'helm-directory)
;;(bind-key "C-c C-l" 'helm-directory)


;; helm-ag
;; (require 'helm-files)
;; (require 'helm-ag)
;; (bind-key "M-g ." 'helm-ag)
;; (bind-key "M-g ," 'helm-ag-pop-stack)
;; (custom-set-variables
;;  '(helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
;;  '(helm-ag-command-option "--all-text")
;;  '(helm-ag-insert-at-point 'symbol))