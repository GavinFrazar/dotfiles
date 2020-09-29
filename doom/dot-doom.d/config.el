;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;;; Loads:
(load! "+funcs.el")
(load! "+bindings.el")

(setq user-full-name "GJF"
      user-mail-address "gavinfrazar@gmail.com")

(setq doom-font (font-spec :family "Iosevka" :size 20)
      doom-big-font (font-spec :family "Iosevka" :size 24)
      doom-variable-pitch-font (font-spec :family "Overpass" :size 20)
      )

(use-package! fira-code-mode
  :hook prog-mode
  :config
  (fira-code-mode--setup)
  (customize-set-variable
   'fira-code-mode-disabled-ligatures
   '("[]" "#{" "#(" "#_" "#_(" "x")) ;; List of ligatures to turn off
  )

                                        ;(use-package! lsp-mode)
                                        ;(use-package! company-lsp
                                        ;  :config
                                        ;  (add-to-list 'company-backends 'company-lsp))

;;; Hooks:
(add-hook! org-mode
           #'visual-line-mode)

;; enable format on save
(add-hook! #'prog-mode
           #'format-all-mode)

;;; Ensure doom theme is loaded
;; (load-theme doom-theme t)


(defun doom-modeline-conditional-buffer-encoding ()
  "We expect the encoding to be LF UTF-8, so only show the modeline when this is not the case"
  (setq-local doom-modeline-buffer-encoding
              (unless (or (eq buffer-file-coding-system 'utf-8-unix)
                          (eq buffer-file-coding-system 'utf-8)))))

;; set the theme
(setq doom-theme 'doom-vibrant)
