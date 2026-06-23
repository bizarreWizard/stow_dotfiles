;;; custom.el -*- lexical-binding: t; -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(+dashboard-functions
   '(+dashboard-widget-banner +dashboard-widget-spacer +dashboard-widget-loaded))
 '(package-selected-packages '(kanagawa-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-buffer-file ((t (:inherit mode-line-emphasis :foreground "light sky blue" :weight regular))))
 '(doom-modeline-buffer-modified ((t (:inherit mode-line-emphasis :foreground "light steel blue" :weight regular))))
 '(doom-modeline-buffer-path ((t (:inherit doom-modeline-emphasis :foreground "dodger blue" :weight regular))))
 '(doom-modeline-lsp-success ((t (:inherit doom-modeline-info :weight bold))))
 '(doom-modeline-project-dir ((t (:inherit mode-line-emphasis :foreground "royal blue" :weight regular))))
 '(doom-modeline-time ((t (:inherit doom-modeline :foreground "orange"))))
 '(doom-modeline-vcs-default ((t (:inherit doom-modeline-info :foreground "light sky blue"))))
 '(mode-line ((t (:background "#1d1d1d" :foreground "cornflower blue"))))
 '(mode-line-emphasis ((t (:foreground "#d4d4d4" :weight regular))))
 '(mode-line-inactive ((t (:background "#1d1d1d" :foreground "dark gray"))))
 '(org-level-3 ((t (:inherit outline-3 :extend t :foreground "light green"))))
 '(outline-1 ((t (:extend t :foreground "#339CDB" :weight normal))))
 '(outline-2 ((t (:extend t :foreground "#C586C0" :weight normal))))
 '(outline-3 ((t (:extend t :foreground "#BB80B3" :weight normal))))
 '(outline-4 ((t (:extend t :foreground "#66b4e3" :weight normal))))
 '(outline-5 ((t (:extend t :foreground "#d3a4cf" :weight normal))))
 '(outline-6 ((t (:extend t :foreground "#99cded" :weight normal))))
 '(outline-7 ((t (:extend t :foreground "#e2c2df" :weight normal))))
 '(outline-8 ((t (:extend t :foreground "#d6ebf7" :weight normal)))))
