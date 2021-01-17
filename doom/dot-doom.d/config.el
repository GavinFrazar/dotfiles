;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;;; Loads:
(load! "+funcs.el")
(load! "+bindings.el")

(setq user-full-name "Gavin Frazar"
      user-mail-address "gavinfrazar@gmail.com")

(setq doom-font (font-spec :family "Iosevka" :size 20)
      doom-big-font (font-spec :family "Iosevka" :size 24)
      doom-variable-pitch-font (font-spec :family "Overpass" :size 20))

(custom-set-faces!
  '(doom-modeline-buffer-modified :foreground "orange"))

(use-package! fira-code-mode
  :hook prog-mode
  :config
  (fira-code-mode--setup)
  (customize-set-variable
   'fira-code-mode-disabled-ligatures
   '("[]" "#{" "#(" "#_" "#_(" "x"))) ;; List of ligatures to turn off


;; configure .info files to use Info-mode
(use-package! info
  :mode ("\\.info\\'" . Info-mode))

;;; Hooks:
(add-hook! org-mode
           #'visual-line-mode)

;;; Ensure doom theme is loaded
;; (load-theme doom-theme t)

(defun doom-modeline-conditional-buffer-encoding ()
  "We expect the encoding to be LF UTF-8, so only show the modeline when this is not the case"
  (setq-local doom-modeline-buffer-encoding
              (unless (or (eq buffer-file-coding-system 'utf-8-unix)
                          (eq buffer-file-coding-system 'utf-8)))))

(setq auto-mode-alist (rassq-delete-all 'scheme-mode auto-mode-alist))

(use-package! ox-pandoc
  :after org)

;; default options for all output formats
(setq org-pandoc-options '((standalone . _)))
;; cancel above settings only for 'docx' format
(setq org-pandoc-options-for-docx '((standalone . nil)))
;; special settings for beamer-pdf and latex-pdf exporters
(setq org-pandoc-options-for-beamer-pdf '((pdf-engine . "xelatex")))
(setq org-pandoc-options-for-latex-pdf '((pdf-engine . "pdflatex")))
;; special extensions for markdown_github output
(setq org-pandoc-format-extensions '(markdown_github+pipe_tables+raw_html))

;; set the theme
(setq doom-theme 'doom-vibrant)
