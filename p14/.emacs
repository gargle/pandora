
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; set toggle-bar-mode off
(tool-bar-mode -1)

;; set menu-bar-mode off
(menu-bar-mode -1)

;; set menu-bar-mode off
(column-number-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("/mnt/c/git/gargle/gargle.org"))
 '(package-selected-packages
   '(markdown-mode htmlize oauth use-package xkcd tumblesocks mastodon magit org-jira cobol-mode chess)))
 
;; Insert spaces instead of tabs
(setq-default indent-tabs-mode nil)
 
;; Set line width to 102 columns...
(setq-default fill-column 102)

;; auto-fill mode on in all major modes
(setq-default auto-fill-function 'do-auto-fill)

;############################################################################
;# org-mode                                                                 #
;############################################################################

(setq org-babel-python-command "python3")
(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (sql . t)
   (R . t)
   (awk . t)
   (shell . t)
   (latex . t)
   (perl . t)))
(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)" "|" "DONE" "CANCELLED(c)")))

;############################################################################
;# mastodon                                                                 #
;############################################################################

(setq mastodon-instance-url "https://floss.social"
      mastodon-active-user "gargle")

;############################################################################
;# tumblesocks                                                              #
;############################################################################

(setq tumblesocks-blog "laejoh.tumblr.com")

