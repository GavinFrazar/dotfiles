;;; ~/dotfiles/doom/.doom.d/+funcs.el -*- lexical-binding: t; -*-

;; TODO - Learn best practices for making custom packages
;; or functions. This file is just a temporary colleciton of
;; misc functions I need.

;; (defun org-insert-item-then-insert-mode ()
;;   '(org-insert-item)
;;   '(evil-insert))
(defun refresh-org-agenda-files ()
  "Refreshes the org-agenda-files variable"
  (interactive)
  (setq org-agenda-files
        (apply 'append
               (mapcar
                (lambda (directory)
                  (directory-files-recursively
                   directory org-agenda-file-regexp))
                '("~/org/")))))
