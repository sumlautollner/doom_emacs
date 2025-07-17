(setq custom-theme-directory "~/.emacs.d/themes/")

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Andreas Söllner"
      user-mail-address "s.umlaut.o.llner@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;(setq doom-font (font-spec :family "Adwaita Mono" :size 18) 
(setq doom-font (font-spec :family "Cascadia Code" :size 18)
     doom-variable-pitch-font (font-spec :family "Cascadia Code" :size 22))

;;(setq doom-font (font-spec :family "Adwaita Mono" :size 18)
;;     doom-variable-pitch-font (font-spec :family "Cascadia Code" :size 22))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'leuven ):w
;;(setq doom-theme 'modus-operandi):w
;;(setq doom-theme 'doom-flatwhite):w
;;(setq doom-theme 'doom-opera-light):w
(setq doom-theme 'doom-tomorrow-day):w
;;(setq doom-theme 'doom-tomorrow-night):w
;;(setq doom-theme 'apropospriate-light):w
;;(setq doom-theme 'apropospriate-light):w
;;(setq doom-theme 'apropospriate-light):w
;;(setq doom-theme 'apropospriate-light):w
;;(setq doom-theme 'doom-solarized-light):w
;;(setq doom-theme 'doom-solarized-light):w
;;(setq doom-theme 'doom-solarized-light):w
;;(setq doom-theme 'spacemacs-light ):w
;;(setq doom-theme 'doom-gruvbox-light ):w
;;(setq doom-theme 'doom-nord ):w
;;(setq doom-theme 'doom-oksolar-light ):w
;;(load-theme 'humanoid-light t)
;;(setq doom-theme 'afternoon):w
;;(setq doom-theme 'solo-jazz):w
;;(setq doom-theme 'doom-ayu-light):w
;;(setq doom-theme 'doom-one-light):w

;; This determines the style of line numbers in effect. If set to `nil', line
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/Notes/Org")

;; Projecttile configuration
(setq projectile-project-search-path '("~/Projects/"))
(setq projectile-enable-caching 'persistent)


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(setq fancy-splash-image (concat doom-private-dir "emacs_logo_2.png"))

;; Set Windos size on startup 

(add-to-list 'default-frame-alist '(width . 120))  ; Width set to 80 characters
(add-to-list 'default-frame-alist '(height . 44)) ; Height set to 24 lines


;; Org done tasks formatting 
(defun my/modify-org-done-face ()
  (setq org-fontify-done-headline t)
  (set-face-attribute 'org-done nil :strike-through t)
  (set-face-attribute 'org-headline-done nil
                      :strike-through t
                      :foreground "light gray"))

(eval-after-load "org"
  (add-hook 'org-add-hook 'my/modify-org-done-face))
