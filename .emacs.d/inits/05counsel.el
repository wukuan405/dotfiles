(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;;(global-set-key "\C-s" 'swiper)
(bind-key "C-s" 'swiper)
(bind-key "C-;" 'ivy-switch-buffer)
(bind-key "C-c r" 'ivy-resume)
(bind-key "C-x C-c" 'counsel-M-x)
(bind-key "M-x" 'counsel-M-x)
(bind-key "C-x C-f" 'counsel-find-file)
(bind-key "C-x F" 'counsel-describe-function)
(bind-key "C-x V" 'counsel-describe-variable)
(bind-key "C-x L" 'counsel-find-library)
(bind-key "C-x I" 'counsel-info-lookup-symbol)
(bind-key "C-x U" 'counsel-unicode-char)
(bind-key "C-c g" 'counsel-git)
(bind-key "C-c j" 'counsel-git-grep)
(bind-key "C-c k" 'counsel-ag)
(bind-key "C-c l" 'counsel-locate)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)