
;; STANDARD libraries needed

(require 'cl)
(require 'package)

;; Packages and configs to load

(defvar init-configs
  '("global"
    "markdown"
    "javascript"
    "haskell"
    "git"
    "workflow"
    "web"
    "rust"
    "go"
    "tramp"
    "python"
;    "email"
    ))

(require 'evil)

;; Load configurations

(defvar init-currentDir (file-name-directory (or load-file-name buffer-file-name)))

(loop for name in init-configs
      do (load (concat init-currentDir "config/" name ".el")))

;; Set default theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/solarized")
(load-theme 'solarized t)

;; Mode initializations

(evil-mode)
(load "haskell-mode-autoloads.el")

;; Debug mode

;(setq debug-on-error t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-complete-module-preferred
   (quote
    ("Data.ByteString" "Data.ByteString.Lazy" "Data.Conduit" "Data.Function" "Data.List" "Data.Map" "Data.Maybe" "Data.Monoid" "Data.Ord")))
 '(haskell-font-lock-symbols t)
 '(haskell-interactive-mode-eval-mode (quote haskell-mode))
 '(haskell-interactive-mode-eval-pretty nil)
 '(haskell-interactive-mode-include-file-name nil)
 '(haskell-interactive-popup-errors nil)
 '(haskell-process-args-ghci (quote ("-ferror-spans")))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-generate-tags nil)
 '(haskell-process-log t)
 '(haskell-process-path-ghci "ghci")
 '(haskell-process-reload-with-fbytecode nil)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-process-use-presentation-mode t)
 '(haskell-stylish-on-save t)
 '(haskell-tags-on-save nil)
 '(package-selected-packages
   (quote
    (persp-mode-projectile-bridge magit yaml-mode writegood-mode web-mode w3m use-package solarized-theme rust-mode ruby-end purescript-mode psc-ide paredit markdown-mode json-mode intero idris-mode hindent helm-projectile helm-fuzzier helm-flx helm-ag ghc flycheck-purescript floobits evil-visual-mark-mode ensime elm-mode auto-complete alchemist ag ac-js2)))
 '(psc-ide-executable "/home/whitehead/.local/bin" t)
 '(python-indent-offset 2)
 '(safe-local-variable-values
   (quote
    ((intero-targets "bawerk:lib" "bawerk:exe:bawerk-exe" "bawerk:test:bawerk-test" "bawerk:bench:bawerk-benchmarks")
     (intero-targets "fx:lib" "fx:exe:fx-exe" "fx:test:fx-test" "fx:bench:fx-benchmarks")
     (intero-targets "mises:lib" "mises:exe:mises" "mises:exe:spike" "mises:test:mises-test")
     (intero-targets "mtl-style-example:lib" "mtl-style-example:exe:mtl-style-example" "mtl-style-example:test:mtl-style-example-test-suite")
     (intero-targets "mises:lib" "mises:exe:mises-exe" "mises:test:mises-test")
     (haskell-indent-spaces . 4)
     (haskell-process-use-ghci . 4)
     (haskell-indent-spaces . 2)
     (haskell-process-type . cabal-repl)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq mac-command-modifier 'control)
