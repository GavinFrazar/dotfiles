;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;;; Loads:
(load! "+funcs.el")
(load! "+bindings.el")

(setq user-full-name "Gavin Frazar"
      user-mail-address "gavinfrazar@gmail.com")

(setq-default
 delete-by-moving-to-trash t            ; Delete files to trash
 tab-width 4                            ; Set width for tabs
 uniquify-buffer-name-style 'forward    ; Uniquify buffer names
 window-combination-resize t            ; take new window space from all other windows (not just current)
 x-stretch-cursor t)                    ; Stretch cursor to the glyph width

(unless (equal "Battery status not available"
               (battery))
  (display-battery-mode 1))

;;; Ensure doom theme is loaded
;; (load-theme doom-theme t)

(defun doom-modeline-conditional-buffer-encoding ()
  "We expect the encoding to be LF UTF-8, so only show the modeline when this is not the case"
  (setq-local doom-modeline-buffer-encoding
              (unless (or (eq buffer-file-coding-system 'utf-8-unix)
                          (eq buffer-file-coding-system 'utf-8)))))
(add-hook 'after-change-major-mode-hook
          #'doom-modeline-conditional-buffer-encoding)

;; Disable scheme-mode auto-enabling for any file type
(setq auto-mode-alist (rassq-delete-all 'scheme-mode auto-mode-alist))

;; Org tweaks
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
(remove-hook 'org-mode
             #'visual-line-mode)
(add-hook 'org-mode
          #'auto-fill-mode)
(setq org-directory "~/org"
      org-use-property-inheritance t
      org-log-done 'time
      org-export-in-background t
      org-catch-invisible-edits 'smart
      org-list-demote-modify-bullet '(("+" . "-") ("-" . "+") ("*" . "+") ("1." . "a.")))
(after! org (add-hook 'org-mode-hook 'turn-on-flyspell))

;; set the theme
(setq doom-theme 'doom-vibrant)

;; customize colors
(custom-set-faces!
  '(doom-modeline-buffer-modified :foreground "orange"))

;; fonts
(use-package! fira-code-mode
  :hook prog-mode
  :config
  (fira-code-mode--setup)
  (customize-set-variable
   'fira-code-mode-disabled-ligatures
   '("[]" "#{" "#(" "#_" "#_(" "x"))) ;; List of ligatures to turn off

(setq doom-font (font-spec :family "Iosevka" :size 20)
      doom-big-font (font-spec :family "Iosevka" :size 24)
      doom-variable-pitch-font (font-spec :family "Overpass" :size 20))
