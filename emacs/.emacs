;;default coding style
(setq c-default-style "bsd"
      c-basic-offset 4
      c-backspace-function 'backward-delete-char)
;;(setq c-backspace-function 'backward-delete-char)
(setq default-tab-width 4) ;;set tab width 4

(require 'php-mode)
;;TAB to behave as TAB
(defun my-php-mode-hook ()
  (local-set-key (kbd "TAB") 'self-insert-command))
(add-hook 'php-mode-hook 'my-php-mode-hook)

;; Don't make me type out 'yes' and 'no'
(fset 'yes-or-no-p 'y-or-n-p)
;;
(global-font-lock-mode t)
(setq inhibit-startup-message t) ;; remove start screen
(tool-bar-mode -1) ;; remove toolbar
;;enable line numbering
(require 'linum)
(global-linum-mode)
(setq x-select-enable-clipboard t)
(add-to-list 'load-path
                  "~/.emacs.d/plugins/yasnippet-0.6.1c")
    (require 'yasnippet) ;; not yasnippet-bundle
    (yas/initialize)
    (yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

 (require 'ido)
    (ido-mode t)
    (setq ido-enable-flex-matching t) ;; enable fuzzy matching
;;
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(face-font-family-alternatives (quote (("Droid Sans Mono" "Droid Sans Mono" "Droid Sans Mono") ("Droid Sans Mono" "Droid Sans Mono" "Droid Sans Mono") ("Droid Sans Mono" "Droid Sans Mono" "Droid Sans Mono" "Droid Sans Mono" "Droid Sans Mono") ("Droid Sans Mono" "Droid Sans Mono" "Droid Sans Mono" "Droid Sans Mono")))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width condensed :foundry "unknown" :family "Droid Sans Mono")))))
