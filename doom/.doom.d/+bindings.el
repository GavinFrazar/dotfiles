;;; ~/dotfiles/doom/.doom.d/+bindings.el -*- lexical-binding: t; -*-

;; leader sequences
(map! :leader
      :desc "Eval expression" :g "e" #'eval-expression
      :desc "Toggle comment" :g ";" #'comment-or-uncomment-region
      (:prefix "o"
        (:desc "org agenda" :prefix "a"
          :desc "Org clock-in" :g "i" #'org-clock-in))
      (:prefix "q"
        :desc "kill emacs" :g "k" #'kill-emacs)
      (:prefix "t"
        :desc "Frame maximized" :g "m" #'toggle-frame-maximized)
      (:prefix "/" :g "c" #'evil-ex-nohighlight)
      (:desc "Repeat last command" :g "r" #'repeat))

(map! :map org-mode-map
      :localleader
      (:prefix "b"
        (:prefix ("d" . "delete")
          (:desc "Delete table column" :g "c" #'org-table-delete-column))))

(map! [backtab] #'+format/buffer)
