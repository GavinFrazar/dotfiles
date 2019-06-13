;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;;; Loads:
(load! "+funcs.el")
(load! "+bindings.el")

;;; Org agenda files
;; (refresh-org-agenda-files)
(advice-add! '(org-tags-view)
             :before #'refresh-org-agenda-files)

;;; Hooks:
(add-hook! org-mode
  #'visual-line-mode)

;;; Ensure doom theme is loaded
;; (load-theme doom-theme t)
