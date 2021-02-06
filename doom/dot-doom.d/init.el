;;; ~/.doom.d/init.el -*- lexical-binding: t; -*-

(doom!
 :completion
 (company +childframe)
 (ivy +prescient +icons)

 :ui
 doom
 doom-dashboard
 fill-column
 hl-todo
 (modeline +light)
 ophints
 (popup +defaults)
 vc-gutter         ; vcs diff in the fringe
 workspaces        ; tab emulation, persistence & separate workspaces

 :editor
 (evil +everywhere); come to the dark side, we have cookies
 file-templates    ; auto-snippets for empty files
 fold              ; (nigh) universal code folding
 format
 multiple-cursors   ; editing in many places at once
 rotate-text             ; cycle region at point between text candidates
 snippets          ; my elves. They type so I don't have to

 :emacs
 dired
 electric
 (ibuffer +icons)
 undo
 vc

 :term
 eshell

 :checkers
 syntax
 spell

 :tools
 (eval +overlay)
 (lookup           ; helps you navigate your code and documentation
  +docsets         ; ...or in Dash docsets locally
  +dictionary)
 lsp
 magit

 :os

 :lang
 ;;assembly
 (cc +lsp)
 ;;clojure
 ;;common-lisp
 data
 emacs-lisp
 (javascript +lsp)
 latex             ; writing papers in Emacs has never been so fun
 markdown          ; writing docs for people to ignore
 (org +dragndrop +pandoc +roam)
 (python +lsp)
 racket
 (rust +lsp)
 (sh +fish)
 web

 :email ; unused
 :app   ; unused
 ;;irc               ; how neckbeards socialize

 :config
 (default +bindings +smartparens))
