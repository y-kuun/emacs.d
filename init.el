;; -*- coding: gb18030 -*-

(message "Hello Emacs by ykdu BEGIN")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" default)))
 '(global-font-lock-mode t)
 '(global-linum-mode nil)
 '(gnutls-algorithm-priority "normal:-vers-tls1.3")
 '(package-selected-packages
   (quote
	(ccls lsp-treemacs company-lsp lsp-ui counsel-gtags flycheck-clang-analyzer flycheck-clang-tidy csharp-mode clang-format company-c-headers eldoc-eval eldoc c-eldoc lua-mode lsp-ivy lsp-mode monokai-theme ivy-explorer ivy-omni-org ivy-xref counsel-projectile counsel ivy elf-mode pdf-tools ob-async expand-region ido-at-point yasnippet flycheck projectile-ripgrep projectile glsl-mode cnfonts pyim edit-server gnu-elpa-keyring-update cmake-mode magit markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'org)

(when (eq system-type 'windows-nt)
  (org-babel-load-file
   (expand-file-name "org/misc_win.org"
		     user-emacs-directory))

  )

(when (eq system-type 'darwin)
  (org-babel-load-file
   (expand-file-name "org/misc_darwin.org"
		     user-emacs-directory))

  )

(org-babel-load-file
 (expand-file-name "org/misc.org"
		   user-emacs-directory))

(put 'upcase-region 'disabled nil)
