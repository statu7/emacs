;; Frame size start up
(when window-system (set-frame-size (selected-frame) 150  70))


;; custom themes
(setq package-enable-at-startup nil)
(package-initialize)
(add-to-list 'load-path              "~/.emacs.d/cust/themes/alect-themes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/cust/thems/alect-themes")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (alect-dark)))
 '(custom-safe-themes
   (quote
    ("a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" default)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'alect-dark t)

;; -*- mode: elisp -*-
(setq show-paren-style 'expression)
(show-paren-mode 2)

;; remote mode
(require 'tramp)


(add-to-list 'load-path "~/.emacs.d/cust/")
;; line numbersp
(require 'linum+)
(setq linum-format "%d ")
(global-linum-mode 1)

;; built-in
;; best view for open file
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; built-in
;; show buffers
(require 'bs)
(global-set-key (kbd "<f5>") 'bs-show)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;org-mode ;;
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; right alt - key only for keyboard commands
(setq mac-right-option-modifier nil)

;; TODO-Sequnces
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;; agenda files
(setq org-agenda-files (list "~/Documents/org/books.org
                              ~/Documents/org/work.org"
                             "~/Documents/org/home.org"
			     "~/Documents/org/tech.org"
			     "~/Documents/org/projects.org"
			     "~/Documents/org/finance.org"
			     "~/Documents/org/video.org"
			     "~/Work/Timeguru/timeguru.org"
			     "/Volumes/SD-64/Der_Bote/30/org/bote.org"))

;; makes text mark ups none visible *bold* /italic/ _underline_ =code= =virbatim +strike-through+
(setq org-hide-emphasis-markers t)


;;-*-Input Mono Narrow-ultralight-normal-ultracondensed-*-*-*-*-*-m-0-iso10646-1
(set-frame-font
    "-*-Input Mono Narrow-ultralight-normal-ultracondensed-*-*-*-*-*-m-0-iso10646-1")

;;use larger font
  (set-face-attribute 'default (selected-frame) :height 160)

;; VCL
 (add-to-list 'load-path "~/.emacs.d/cust/")
  (require 'git)
  (require 'git-blame)


;; The following modules are available:

;; * git.el:

;;   Status manager that displays the state of all the files of the
;;   project, and provides easy access to the most frequently used git
;;   commands. The user interface is as far as possible compatible with
;;   the pcl-cvs mode. It can be started with `M-x git-status'.

;; * git-blame.el:

;;   Emacs implementation of incremental git-blame.  When you turn it on
;;   while viewing a file, the editor buffer will be updated by setting
;;   the background of individual lines to a color that reflects which
;;   commit it comes from.  And when you move around the buffer, a
;;   one-line summary will be shown in the echo area.

