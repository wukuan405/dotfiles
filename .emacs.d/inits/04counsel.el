;;; 04counsel.el --- 04counsel.el
;;; Commentary:
;;; Code:
;;(setq debug-on-error t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-use-selectable-prompt t)
(setq enable-recursive-minibuffers t)
(setq company-selection-wrap-around t)
(bind-key "C-s" 'swiper-for-region-or-swiper)
(bind-key "C-;" 'ivy-switch-buffer)
(bind-key "C-c C-r" 'ivy-resume)
(bind-key "C-x C-c" 'counsel-M-x)
(bind-key "M-x" 'counsel-M-x)
(bind-key "C-x C-f" 'counsel-find-file)
(bind-key "M-y" 'counsel-yank-pop)
(bind-key "C-x m" 'counsel-mark-ring)
(bind-key "C-x F" 'counsel-describe-function)
(bind-key "C-x V" 'counsel-describe-variable)
(bind-key "C-x L" 'counsel-find-library)
(bind-key "C-x I" 'counsel-info-lookup-symbol)
(bind-key "C-x U" 'counsel-unicode-char)
(bind-key "C-c g" 'counsel-git-grep)
(bind-key "C-c C-f" 'counsel-git)
(bind-key "C-c C-y" 'ivy-yasnippet)
(bind-key "C-c k" 'counsel-ag)
(bind-key "C-c C-k" 'counsel-rg)
(bind-key "C-c l" 'counsel-locate)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
(setq xref-show-xrefs-function #'ivy-xref-show-xrefs)
(setq counsel-yank-pop-separator
      "\n------------------------------------------------------------\n")


(defun swiper-for-region-or-swiper ()
  "If the region is active, swiper-for-region.
If the region is inactive, swiper."
  (interactive)
  (if (region-active-p)
      (progn (setq mark-active nil)
	     (swiper (buffer-substring
		      (region-beginning) (region-end))))
    (swiper)))


;; counsel-tramp
(setq tramp-default-method "ssh")
(add-hook 'counsel-tramp-pre-command-hook '(lambda () (global-aggressive-indent-mode 0)
					     (projectile-mode 0)
					     (editorconfig-mode 0)))
(add-hook 'counsel-tramp-quit-hook '(lambda () (global-aggressive-indent-mode 1)
				      (projectile-mode 1)
				      (editorconfig-mode 1)))


(defun counsel-ghq--list-candidates ()
  "Candidates list for counsel-ghq."
  (with-temp-buffer
    (unless (zerop (apply #'call-process
			  "ghq" nil t nil
			  '("list" "--full-path")))
      (error "Failed: Can't get ghq list candidates"))
    (let ((paths))
      (goto-char (point-min))
      (while (not (eobp))
	(push (buffer-substring-no-properties
	       (line-beginning-position) (line-end-position))
	      paths)
        (forward-line 1))
      (reverse paths))))

(defun counsel-ghq ()
  "Counsel interface for ghq."
  (interactive)
  (counsel-find-file (ivy-read "ghq list: " (counsel-ghq--list-candidates))))

(bind-key "C-x l" 'counsel-ghq)
(bind-key "C-x C-l" 'counsel-projectile-switch-project)


;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
;;; 04counsel.el ends here
