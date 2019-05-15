;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-


;;; Hooks:
(add-hook! org-mode
  #'visual-line-mode)

;;; Loads:
(load! "+bindings.el")

;;; Ensure doom theme is loaded
;; (load-theme doom-theme t)
