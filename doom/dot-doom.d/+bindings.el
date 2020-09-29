;;; ~/dotfiles/doom/.doom.d/+bindings.el -*- lexical-binding: t; -*-

;; leader sequences
(map! :leader
      :desc "Eval expression" :g "e" #'eval-expression
      :desc "Toggle comment" :g ";" #'comment-or-uncomment-region
      (:prefix "o"
       (:desc "org agenda" :prefix "a"
        :desc "Org clock-in" :g "i" #'org-clock-in
        :desc "Org clock-out" :g "o" #'org-clock-out))
      (:prefix "q"
       :desc "kill emacs" :g "k" #'kill-emacs)
      (:prefix "t"
       :desc "Frame maximized" :g "m" #'toggle-frame-maximized)
      (:prefix "/" :g "c" #'evil-ex-nohighlight)
      (:desc "Repeat last command" :g "r" #'repeat)
      (:prefix "b"
       :desc "Revert buffer" :g "r" #'revert-buffer))

;; org
(map! :map org-mode-map
      :localleader
      (:prefix "b"
       (:prefix ("d" . "delete")
        (:desc "Delete table column" :g "c" #'org-table-delete-column)))
                                        ;(:prefix "e"
                                        ; :desc "to PDF" :g "p" #'org-latex-export-to-pdf)
      (:desc "insert item" :g "n" #'org-insert-item))

;; DocView
(map! :mode doc-view-mode
      :n "l" #'doc-view-next-page
      :n "h" #'doc-view-previous-page)

(map! [backtab] #'+format/buffer)
