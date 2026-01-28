(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)


(setq inhibit-startup-message t) ; no splash screen
(use-package better-defaults)
;; Stop customize from writing to my init file.
(setq custom-file "~/.emacs.d/custom.el")

(load-theme 'cyberpunk t)

(setq dired-do-revert-buffer t)


(defun cleanup-buffer-safe ()
  "Perform a bunch of safe operations on the whitespace content of a buffer.
Does not indent buffer, because it is used for a before-save-hook, and that
might be bad."
  (interactive)
  (delete-trailing-whitespace)
  (set-buffer-file-coding-system 'utf-8))

;; Various superfluous white-space. Just say no.
(add-hook 'before-save-hook 'cleanup-buffer-safe)


(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(setq tab-width 2)
(setq require-final-newline t)
(setq electric-indent-mode t)
(setq js-indent-level 2)


;;;
;;; Keybindings
;;;

(global-set-key (kbd "RET") 'newline-and-indent)
;;(global-set-key (kbd "C-c C-f") 'ff-find-other-file)
(global-set-key (kbd "M-%") 'query-replace-regexp)
;; No more minimizing Emacs by accident.
(global-unset-key (kbd "C-z"))
;; No more closing Emacs by accident.
;;(global-unset-key (kbd "C-x C-c"))
;; Enable some disabled-by-default functions.
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; (add-to-list 'term-file-aliases
;;              '("screen.xterm-256color" . "xterm-256color"))
(setq desktop-path '("~/"))
(desktop-save-mode 1)

;;use projectile
;;(global-set-key (kbd "C-x C-f") 'projectile-find-file)
(global-set-key (kbd "C-x C-o") 'find-file)


;; (require 'ido)
;; (ido-mode t)
;;(ido-ubiquitous-mode t)

;; Line nums
;;(global-linum-mode t)
(column-number-mode t)
(global-hl-line-mode t)

;;(global-set-key (kbd "C-x C-f") 'projectile-find-file)
(global-set-key (kbd "C-x C-o") 'find-file)

(show-paren-mode 1)  ; Match parentheses
;;(require 'highlight-parentheses)
