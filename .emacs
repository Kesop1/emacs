(package-initialize)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;;install-packages-from-list
;;bm
;;counsel
;;swiper
;;nyan-mode
;;zenburn-theme


;;from https://gitlab.com/buildfunthings/emacs-config/blob/master/loader.org

;;y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;save-macro
(defun save-macro (name)
    "save a macro. Take a name as argument
     and save the last defined macro under
     this name at the end of your .emacs"
     (interactive "SName of the macro: ")  ; ask for the name of the macro
     (kmacro-name-last-macro name)         ; use this name for the macro
     (find-file user-init-file)            ; open ~/.emacs or other user init file
     (goto-char (point-max))               ; go to the end of the .emacs
     (newline)                             ; insert a newline
     (insert-kbd-macro name)               ; copy the macro
     (newline)                             ; insert a newline
     (switch-to-buffer nil))               ; return to the initial buffer

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("bfdcbf0d33f3376a956707e746d10f3ef2d8d9caa1c214361c9c08f00a1c8409" default)))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(nyan-animate-nyancat t)
 '(nyan-mode t)
 '(nyan-wavy-trail t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://stable.melpa.org/packages/"))))
 '(package-selected-packages (quote (counsel swiper nyan-mode zenburn-theme)))
 '(read-quoted-char-radix 16))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(fset 'get-install-packages-list
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217788 19 105 110 115 116 97 108 108 45 112 97 99 107 97 103 101 115 45 102 114 111 109 45 108 105 115 116 return 14 1] 0 "%d")) arg)))


(fset 'get-packages-list
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217848 103 101 116 45 105 110 115 tab return 134217788 19 105 110 115 116 97 108 108 45 112 97 99 107 97 103 101 115 45 102 114 111 109 45 108 105 115 116 return 14 1 67108896 19 32 16] 0 "%d")) arg)))

